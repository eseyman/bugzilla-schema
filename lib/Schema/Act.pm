# Schema::Act.pm
#
# Copyright (c) 2015 Emmanuel Seyman <emmanuel@seyman.fr>. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.

package Schema::Act;

use strict;
use vars qw(@ISA $VERSION $debug);
use Carp;

$VERSION = "0.90";

sub metadata() {
    return {
        name    => 'Act',
        url     => 'http://act.mongueurs.org/',
        summary => 'a multilingual, template-driven, multi-conference web site',
        licence => 'Perl',
        logo    => '/static/images/act.gif'
    }
}

our @releases = (
    { version => "10", schema => "10", },
);

sub list_versions() {
    map { $_->{version} } @releases;
}

sub current_version() {
    return '10';
}

1
