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

sub run {

    my $app = sub {
        my $env = shift;
        my $request = Plack::Request->new($env);

        my $config = {
            INCLUDE_PATH => 'views',
            INTERPOLATE  => 1,
            POST_CHOMP   => 1,
        };
        my $projects = projects();

        if ($request->path_info eq '/') {
            my $template = Template->new($config);

            my $vars = {};
            my $content;
            $vars->{'projects'} = $projects;

            $template->process('index.tt', $vars, \$content);
            return [ '200', [ 'Content-Type' => 'text/html' ], [ $content ], ];
        }

        if ($request->path_info =~ m{^/([^/]+)/*$}) {

            my $project = lc($1);

            my $module = 'Schema::' . ucfirst(lc($1));
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

        if ($request->path_info =~ m{^/([^/]+)/schema/*$}) {

            my $module = 'Schema::' . ucfirst(lc($1));

            my %v2r = map { $_->{version} => $_->{schema} } @{ $module . '::releases' };
            my $dbicmodule = $module . '::' . $v2r{$request->param('version')};
            my $autodoc = DBICx::AutoDoc->new('schema' => $dbicmodule, 'include_path' => 'views', 'output' => 'var');
            $autodoc->fill_all_templates('');
            # autodoc creates a file so we need to read it
            my $autodoc_file = 'var/' . $dbicmodule . '-1.html';
            $autodoc_file =~ s/\:\:/-/g;;
            return [ '200', [ 'Content-Type' => 'text/html' ], [ read_text($autodoc_file) ], ];
        }
        return [ '404', [ 'Content-Type' => 'text/html' ], ["404 File Not Found"], ];
    };

};

1;
