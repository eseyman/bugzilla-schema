use utf8;
package Schema::Bugzilla::2_14::Result::profiles;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_14::Result::profiles

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<profiles>

=cut

__PACKAGE__->table("profiles");

=head1 ACCESSORS

=head2 userid

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 login_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 cryptpassword

  data_type: 'varchar'
  is_nullable: 1
  size: 34

=head2 realname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 groupset

  data_type: 'bigint'
  is_nullable: 0

=head2 disabledtext

  data_type: 'mediumtext'
  is_nullable: 0

=head2 mybugslink

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 blessgroupset

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 emailflags

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "login_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "cryptpassword",
  { data_type => "varchar", is_nullable => 1, size => 34 },
  "realname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "groupset",
  { data_type => "bigint", is_nullable => 0 },
  "disabledtext",
  { data_type => "mediumtext", is_nullable => 0 },
  "mybugslink",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "blessgroupset",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "emailflags",
  { data_type => "mediumtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=back

=cut

__PACKAGE__->set_primary_key("userid");

=head1 UNIQUE CONSTRAINTS

=head2 C<login_name>

=over 4

=item * L</login_name>

=back

=cut

__PACKAGE__->add_unique_constraint("login_name", ["login_name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:19:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pY9A/VrIdAFmCWxI8u29+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
