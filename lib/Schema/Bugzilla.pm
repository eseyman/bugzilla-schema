# Schema::Bugzilla.pm
#
# Copyright (c) 2015 Emmanuel Seyman <emmanuel@seyman.fr>. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.

package Schema::Bugzilla;

use strict;
use vars qw(@ISA $VERSION $debug);
use Carp;

$VERSION = "0.90";

sub metadata() {
    return {
        name    => 'Bugzilla',
        url     => 'http://www.bugzilla.org/',
        summary => 'a web-based general-purpose bugtracker and testing tool',
        license => 'MPL',
        logo    => '/static/images/bugzilla.gif'
    }
}

our @releases = (
    { version => "2.0", schema => "2_0", },
    { version => "2.2", schema => "2_2", },
    { version => "2.4", schema => "2_4", },
    { version => "2.6", schema => "2_6", },
    { version => "2.8", schema => "2_8", },
    { version => "2.10", schema => "2_10", },
    { version => "2.12", schema => "2_12", },
    { version => "2.14", schema => "2_14", },
    { version => "2.14.1", schema => "2_14", },
    { version => "2.14.2", schema => "2_14_2", },
    { version => "2.14.3", schema => "2_14_2", },
    { version => "2.14.4", schema => "2_14_2", },
    { version => "2.14.5", schema => "2_14_2", },
    { version => "2.16rc1", schema => "2_16rc1", },
    { version => "2.16rc2", schema => "2_16rc1", },
    { version => "2.16", schema => "2_16rc1", },
    { version => "2.16.1", schema => "2_16rc1", },
    { version => "2.16.2", schema => "2_16rc1", },
    { version => "2.16.3", schema => "2_16rc1", },
    { version => "2.16.4", schema => "2_16rc1", },
    { version => "2.16.5", schema => "2_16rc1", },
    { version => "2.16.6", schema => "2_16rc1", },
    { version => "2.16.7", schema => "2_16rc1", },
    { version => "2.16.8", schema => "2_16rc1", },
    { version => "2.16.9", schema => "2_16rc1", },
    { version => "2.16.10", schema => "2_16rc1", },
    { version => "2.16.11", schema => "2_16rc1", },
    { version => "2.17.1", schema => "2_17_1", },
    { version => "2.17.3", schema => "2_17_3", },
    { version => "2.17.4", schema => "2_17_4", },
    { version => "2.17.5", schema => "2_17_5", },
    { version => "2.17.6", schema => "2_17_5", },
    { version => "2.17.7", schema => "2_17_7", },
    { version => "2.18rc1", schema => "2_18rc1", },
    { version => "2.18rc2", schema => "2_18rc1", },
    { version => "2.18rc3", schema => "2_18rc3", },
    { version => "2.18", schema => "2_18rc3", },
    { version => "2.18.1", schema => "2_18_1", },
    { version => "2.18.2", schema => "2_18_2", },
    { version => "2.18.3", schema => "2_18_2", },
    { version => "2.18.4", schema => "2_18_2", },
    { version => "2.18.5", schema => "2_18_2", },
    { version => "2.18.6", schema => "2_18_2", },
    { version => "2.19.1", schema => "2_19_1", },
    { version => "2.19.2", schema => "2_19_2", },
    { version => "2.19.3", schema => "2_19_3", },
    { version => "2.20rc1", schema => "2_20rc1", },
    { version => "2.20rc2", schema => "2_20rc1", },
    { version => "2.20", schema => "2_20", },
    { version => "2.20.1", schema => "2_20", },
    { version => "2.20.2", schema => "2_20", },
    { version => "2.20.3", schema => "2_20", },
    { version => "2.20.4", schema => "2_20", },
    { version => "2.20.5", schema => "2_20", },
    { version => "2.20.6", schema => "2_20", },
    { version => "2.20.7", schema => "2_20", },
    { version => "2.21.1", schema => "2_21_1", },
    { version => "2.22rc1", schema => "2_22rc1", },
    { version => "2.22", schema => "2_22rc1", },
    { version => "2.22.1", schema => "2_22rc1", },
    { version => "2.22.2", schema => "2_22rc1", },
    { version => "2.22.3", schema => "2_22rc1", },
    { version => "2.22.4", schema => "2_22rc1", },
    { version => "2.22.5", schema => "2_22rc1", },
    { version => "2.22.6", schema => "2_22rc1", },
    { version => "2.22.7", schema => "2_22rc1", },
    { version => "2.23.1", schema => "2_23_1", },
    { version => "2.23.2", schema => "2_23_2", },
    { version => "2.23.3", schema => "2_23_3", },
    { version => "2.23.4", schema => "2_23_4", },
    { version => "3.0rc1", schema => "2_23_4", },
    { version => "3.0", schema => "2_23_4", },
    { version => "3.0.1", schema => "2_23_4", },
    { version => "3.0.2", schema => "2_23_4", },
    { version => "3.0.3", schema => "2_23_4", },
    { version => "3.0.4", schema => "2_23_4", },
    { version => "3.0.5", schema => "2_23_4", },
    { version => "3.0.6", schema => "2_23_4", },
    { version => "3.0.7", schema => "2_23_4", },
    { version => "3.0.8", schema => "2_23_4", },
    { version => "3.0.9", schema => "2_23_4", },
    { version => "3.0.10", schema => "2_23_4", },
    { version => "3.0.11", schema => "2_23_4", },
    { version => "3.1.1", schema => "3_1_1", },
    { version => "3.1.2", schema => "3_1_2", },
    { version => "3.1.3", schema => "3_1_3", },
    { version => "3.1.4", schema => "3_1_4", },
    { version => "3.2rc1", schema => "3_1_4", },
    { version => "3.2rc2", schema => "3_1_4", },
    { version => "3.2", schema => "3_1_4", },
    { version => "3.2.1", schema => "3_1_4", },
    { version => "3.2.2", schema => "3_1_4", },
    { version => "3.2.3", schema => "3_1_4", },
    { version => "3.2.4", schema => "3_1_4", },
    { version => "3.2.5", schema => "3_1_4", },
    { version => "3.2.6", schema => "3_1_4", },
    { version => "3.2.7", schema => "3_1_4", },
    { version => "3.2.8", schema => "3_1_4", },
    { version => "3.2.9", schema => "3_1_4", },
    { version => "3.2.10", schema => "3_1_4", },
    { version => "3.3.1", schema => "3_3_1", },
    { version => "3.3.2", schema => "3_3_2", },
    { version => "3.3.3", schema => "3_3_2", },
    { version => "3.3.4", schema => "3_3_4", },
    { version => "3.4rc1", schema => "3_3_4", },
    { version => "3.4", schema => "3_3_4", },
    { version => "3.4.1", schema => "3_3_4", },
    { version => "3.4.2", schema => "3_3_4", },
    { version => "3.4.3", schema => "3_3_4", },
    { version => "3.4.4", schema => "3_3_4", },
    { version => "3.4.5", schema => "3_3_4", },
    { version => "3.4.6", schema => "3_3_4", },
    { version => "3.4.7", schema => "3_3_4", },
    { version => "3.4.8", schema => "3_3_4", },
    { version => "3.4.9", schema => "3_3_4", },
    { version => "3.4.10", schema => "3_3_4", },
    { version => "3.4.11", schema => "3_3_4", },
    { version => "3.4.12", schema => "3_3_4", },
    { version => "3.4.13", schema => "3_3_4", },
    { version => "3.4.14", schema => "3_3_4", },
    { version => "3.5.1", schema => "3_5_1", },
    { version => "3.5.2", schema => "3_5_1", },
    { version => "3.5.3", schema => "3_5_3", },
    { version => "3.6rc1", schema => "3_6rc1", },
    { version => "3.6", schema => "3_6rc1", },
    { version => "3.6.1", schema => "3_6rc1", },
    { version => "3.6.2", schema => "3_6rc1", },
    { version => "3.6.3", schema => "3_6rc1", },
    { version => "3.6.4", schema => "3_6rc1", },
    { version => "3.6.5", schema => "3_6rc1", },
    { version => "3.6.6", schema => "3_6rc1", },
    { version => "3.6.7", schema => "3_6rc1", },
    { version => "3.6.8", schema => "3_6rc1", },
    { version => "3.6.9", schema => "3_6rc1", },
    { version => "3.6.10", schema => "3_6rc1", },
    { version => "3.6.11", schema => "3_6rc1", },
    { version => "3.6.12", schema => "3_6rc1", },
    { version => "3.6.13", schema => "3_6rc1", },
    { version => "3.7.1", schema => "3_7_1", },
    { version => "3.7.2", schema => "3_7_2", },
    { version => "3.7.3", schema => "3_7_2", },
    { version => "4.0rc1", schema => "4_0rc1", },
    { version => "4.0rc2", schema => "4_0rc2", },
    { version => "4.0", schema => "4_0rc2", },
    { version => "4.0.1", schema => "4_0rc2", },
    { version => "4.0.2", schema => "4_0rc2", },
    { version => "4.0.3", schema => "4_0rc2", },
    { version => "4.0.4", schema => "4_0rc2", },
    { version => "4.0.5", schema => "4_0rc2", },
    { version => "4.0.6", schema => "4_0rc2", },
    { version => "4.0.7", schema => "4_0rc2", },
    { version => "4.0.8", schema => "4_0rc2", },
    { version => "4.0.9", schema => "4_0rc2", },
    { version => "4.0.10", schema => "4_0rc2", },
    { version => "4.0.11", schema => "4_0rc2", },
    { version => "4.0.12", schema => "4_0rc2", },
    { version => "4.0.13", schema => "4_0rc2", },
    { version => "4.0.14", schema => "4_0rc2", },
    { version => "4.0.15", schema => "4_0rc2", },
    { version => "4.0.16", schema => "4_0rc2", },
    { version => "4.0.17", schema => "4_0rc2", },
    { version => "4.0.18", schema => "4_0rc2", },
    { version => "4.1.1", schema => "4_1_1", },
    { version => "4.1.2", schema => "4_1_1", },
    { version => "4.1.3", schema => "4_1_3", },
    { version => "4.2rc1", schema => "4_2rc1", },
    { version => "4.2rc2", schema => "4_2rc2", },
    { version => "4.2", schema => "4_2rc2", },
    { version => "4.2.1", schema => "4_2_1", },
    { version => "4.2.2", schema => "4_2_1", },
    { version => "4.2.3", schema => "4_2_1", },
    { version => "4.2.4", schema => "4_2_1", },
    { version => "4.2.5", schema => "4_2_1", },
    { version => "4.2.6", schema => "4_2_1", },
    { version => "4.2.7", schema => "4_2_1", },
    { version => "4.2.8", schema => "4_2_1", },
    { version => "4.2.9", schema => "4_2_1", },
    { version => "4.2.10", schema => "4_2_1", },
    { version => "4.2.11", schema => "4_2_1", },
    { version => "4.2.12", schema => "4_2_1", },
    { version => "4.2.13", schema => "4_2_1", },
    { version => "4.2.14", schema => "4_2_1", },
    { version => "4.2.15", schema => "4_2_1", },
    { version => "4.2.16", schema => "4_2_1", },
    { version => "4.3.1", schema => "4_3_1", },
    { version => "4.3.2", schema => "4_3_2", },
    { version => "4.3.3", schema => "4_3_3", },
    { version => "4.4rc1", schema => "4_3_3", },
    { version => "4.4rc2", schema => "4_4rc2", },
    { version => "4.4", schema => "4_4rc2", },
    { version => "4.4.1", schema => "4_4rc2", },
    { version => "4.4.2", schema => "4_4rc2", },
    { version => "4.4.3", schema => "4_4rc2", },
    { version => "4.4.4", schema => "4_4rc2", },
    { version => "4.4.5", schema => "4_4rc2", },
    { version => "4.4.6", schema => "4_4rc2", },
    { version => "4.4.7", schema => "4_4rc2", },
    { version => "4.4.8", schema => "4_4rc2", },
    { version => "4.4.9", schema => "4_4rc2", },
    { version => "4.4.10", schema => "4_4rc2", },
    { version => "4.4.11", schema => "4_4rc2", },
    { version => "4.4.12", schema => "4_4rc2", },
    { version => "4.4.13", schema => "4_4rc2", },
    { version => "4.5.1", schema => "4_5_1", },
    { version => "4.5.2", schema => "4_5_2", },
    { version => "4.5.3", schema => "4_5_2", },
    { version => "4.5.4", schema => "4_5_2", },
    { version => "4.5.5", schema => "4_5_5", },
    { version => "4.5.6", schema => "4_5_6", },
    { version => "5.0rc1", schema => "5_0rc1", },
    { version => "5.0rc2", schema => "5_0rc1", },
    { version => "5.0rc3", schema => "5_0rc1", },
    { version => "5.0", schema => "5_0rc1", },
    { version => "5.0.1", schema => "5_0rc1", },
    { version => "5.0.2", schema => "5_0rc1", },
    { version => "5.0.3", schema => "5_0rc1", },
    { version => "5.0.4", schema => "5_0rc1", },
    { version => "5.1.1", schema => "5_1_1", },
    { version => "5.1.2", schema => "5_1_1", },
);

sub list_versions() {
    map { $_->{version} } @releases;
}

sub current_version() {
    foreach (reverse(list_versions())) {
        next if m/rc\d$/;

        my $major; my $minor;
        ($major, $minor) = split /\./;
        return $_ unless $minor % 2;
    }
    return undef;
}

1
