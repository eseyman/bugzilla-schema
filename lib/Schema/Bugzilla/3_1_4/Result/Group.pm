use utf8;
package Schema::Bugzilla::3_1_4::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_4::Result::Group

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

=head1 TABLE: C<groups>

=cut

__PACKAGE__->table("groups");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isbuggroup

  data_type: 'tinyint'
  is_nullable: 0

=head2 userregexp

  data_type: 'tinytext'
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 icon_url

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "isbuggroup",
  { data_type => "tinyint", is_nullable => 0 },
  "userregexp",
  { data_type => "tinytext", is_nullable => 0 },
  "isactive",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "icon_url",
  { data_type => "tinytext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<groups_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("groups_name_idx", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9X/3Rz8AioB4dg9/3VPxfw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
