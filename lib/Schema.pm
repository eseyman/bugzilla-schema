package Schema;

use strict;
use warnings;

use DBICx::AutoDoc;
use File::Slurp;
use Template;
use Plack::Request;

our $VERSION = '0.90';

=head1 NAME

Schema - A tool to generate documentation of the differences between Bugzilla schema versions

=cut

sub projects {

    require Schema::Bugzilla;
    # require Schema::Racktables;

    return {
        bugzilla        => Schema::Bugzilla::metadata(),
        # racktables      => Schema::Racktables::metadata(),
    }
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

            my $module = 'Schema::Bugzilla';
            eval("use $module;");

            if (exists($projects->{$project})) {
                my $content;
                my @versions = map { $_->{version} } @Schema::Bugzilla::releases;
                my $current_version = $Schema::Bugzilla::current;

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

            my %v2r = map { $_->{version} => $_->{schema} } @Schema::Bugzilla::releases;
            my $dbicmodule = "Schema::Bugzilla::" . $v2r{$request->param('version')};
            my $autodoc = DBICx::AutoDoc->new('schema' => $dbicmodule, 'include_path' => 'views', 'output' => 'var');
            $autodoc->fill_all_templates('');
            # autodoc creates a file so we need to read it
            my $autodoc_file = 'var/' . $dbicmodule . '-1.html';
            $autodoc_file =~ s/\:\:/-/g;;
            return [ '200', [ 'Content-Type' => 'text/html' ], [ read_file($autodoc_file) ], ];
        }
        return [ '404', [ 'Content-Type' => 'text/html' ], ["404 File Not Found"], ];
    };

};

1;
