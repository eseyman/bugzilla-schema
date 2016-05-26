use utf8;
package Schema::Bugzilla::4_0rc1::Result::groups;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0rc1::Result::groups

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

=head1 RELATIONS

=head2 bug_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::bug_group_map>

=cut

__PACKAGE__->has_many(
  "bug_group_maps",
  "Schema::Bugzilla::4_0rc1::Result::bug_group_map",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 category_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::category_group_map>

=cut

__PACKAGE__->has_many(
  "category_group_maps",
  "Schema::Bugzilla::4_0rc1::Result::category_group_map",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagtypes_grant_groups

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::flagtypes>

=cut

__PACKAGE__->has_many(
  "flagtypes_grant_groups",
  "Schema::Bugzilla::4_0rc1::Result::flagtypes",
  { "foreign.grant_group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagtypes_request_groups

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::flagtypes>

=cut

__PACKAGE__->has_many(
  "flagtypes_request_groups",
  "Schema::Bugzilla::4_0rc1::Result::flagtypes",
  { "foreign.request_group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_control_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::group_control_map>

=cut

__PACKAGE__->has_many(
  "group_control_maps",
  "Schema::Bugzilla::4_0rc1::Result::group_control_map",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_group_map_grantors

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::group_group_map>

=cut

__PACKAGE__->has_many(
  "group_group_map_grantors",
  "Schema::Bugzilla::4_0rc1::Result::group_group_map",
  { "foreign.grantor_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_group_map_members

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::group_group_map>

=cut

__PACKAGE__->has_many(
  "group_group_map_members",
  "Schema::Bugzilla::4_0rc1::Result::group_group_map",
  { "foreign.member_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedquery_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::namedquery_group_map>

=cut

__PACKAGE__->has_many(
  "namedquery_group_maps",
  "Schema::Bugzilla::4_0rc1::Result::namedquery_group_map",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::user_group_map>

=cut

__PACKAGE__->has_many(
  "user_group_maps",
  "Schema::Bugzilla::4_0rc1::Result::user_group_map",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:29:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xtIK0UqEW3uRhGLQiQyEug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
