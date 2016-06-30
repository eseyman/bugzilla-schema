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
    };

};

1;
