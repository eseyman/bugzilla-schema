package Schema;

use strict;
no strict 'refs';
use warnings;

use DBICx::AutoDoc;
use File::Slurper 'read_text';
use Module::Find;
use Template;
use Plack::Request;

our $VERSION = '0.90';

=head1 NAME

Schema - A tool to generate documentation of the differences between schema versions

=cut

sub projects {

    my %metadata;
    my @found = usesub Schema;

    foreach (@found) {
        my $module  = (split /\:\:/)[1];
        $metadata{ lc($module) } = eval "$_" . "::metadata()";
    }
    return \%metadata;
}

sub module {
    # Given a lowercase word, return the associated project (if it exists)
    my $name = shift;
    my $projects = projects();
    if (exists($projects->{$name})) {
        return $projects->{$name}{'name'};
    }
    return;
}

sub routes {
    return my @elements = grep {!/^$/} split '/', shift;
}

sub run {

    my $app = sub {
        my $env = shift;
        my $request = Plack::Request->new($env);

        my $config = {
            INCLUDE_PATH => 'views:var',
            INTERPOLATE  => 1,
            POST_CHOMP   => 1,
            START_TAG    => quotemeta('<%'),
            END_TAG      => quotemeta('%>'),
        };

        my $projects = projects();
        my @routes = routes($request->path_info);

        # if the routing array is empty, serve the index page
        if (scalar @routes eq 0) {
            my $template = Template->new($config);

            my $vars = {};
            my $content;
            $vars->{'projects'} = $projects;

            $template->process('index.tt', $vars, \$content);
            return [ '200', [ 'Content-Type' => 'text/html' ], [ $content ], ];
        }

        # if the routing array contains one element, it should be a project
        # and we should serve out that project's main page
        if (scalar @routes eq 1) {

            my $project = lc($routes[0]);

            my $module = 'Schema::' . module($routes[0]);
            eval("use $module;");

            if (exists($projects->{$project})) {
                my $content;
                my @versions = $module->list_versions();
                my $current_version = $module->current_version();

                my $template = Template->new($config);
                my $vars = {
                    project => $projects->{$project},
                    versions  => \@versions,
                    current_version => $current_version,
                };

                $template->process('form.tt', $vars, \$content);
                return [ '200', [ 'Content-Type' => 'text/html' ], [ $content ], ];
            } else {
                return [ '404', [ 'Content-Type' => 'text/html' ], ['Epic Fail'], ];
            }
        }

        # if the routing array contains two elements, the first one should
        # be a project and the second an action.
        if (scalar @routes eq 2) {

            my $module = 'Schema::' . module($routes[0]);

            # Let's get DBICx::AutoDoc to do its magic
            my %v2r = map { $_->{version} => $_->{schema} } @{ $module . '::releases' };
            my $dbicmodule = $module . '::' . $v2r{$request->param('version')};
            my $autodoc = DBICx::AutoDoc->new('schema' => $dbicmodule, 'include_path' => 'views', 'output' => 'var');
            $autodoc->fill_all_templates('');
            # autodoc creates a file so we need to read it
            my $autodoc_file = $dbicmodule . '-1.html';
            $autodoc_file =~ s/\:\:/-/g;;

            # Once we have that file, we can run it through TT
            my $template = Template->new($config);
            my $projects = projects();
            my $content;
            my $vars = {
                project => $projects->{lc($routes[0])},
            };

            $template->process($autodoc_file, $vars, \$content) || die $template->error(), "\n";
            return [ '200', [ 'Content-Type' => 'text/html' ], [ $content ], ];
        }

        # in all other cases, return a custom 404 page
        return [ '404', [ 'Content-Type' => 'text/html' ], ["404 File Not Found"], ];
    };

};

1;
