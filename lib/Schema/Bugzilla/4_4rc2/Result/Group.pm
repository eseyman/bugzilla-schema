use utf8;
package Schema::Bugzilla::4_4rc2::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::Group

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

Related object: L<Schema::Bugzilla::4_4rc2::Result::BugGroupMap>

=cut

__PACKAGE__->has_many(
  "bug_group_maps",
  "Schema::Bugzilla::4_4rc2::Result::BugGroupMap",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 category_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::CategoryGroupMap>

=cut

__PACKAGE__->has_many(
  "category_group_maps",
  "Schema::Bugzilla::4_4rc2::Result::CategoryGroupMap",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagtypes_grant_groups

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::Flagtype>

=cut

__PACKAGE__->has_many(
  "flagtypes_grant_groups",
  "Schema::Bugzilla::4_4rc2::Result::Flagtype",
  { "foreign.grant_group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagtypes_request_groups

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::Flagtype>

=cut

__PACKAGE__->has_many(
  "flagtypes_request_groups",
  "Schema::Bugzilla::4_4rc2::Result::Flagtype",
  { "foreign.request_group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_control_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::GroupControlMap>

=cut

__PACKAGE__->has_many(
  "group_control_maps",
  "Schema::Bugzilla::4_4rc2::Result::GroupControlMap",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_group_map_grantors

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::GroupGroupMap>

=cut

__PACKAGE__->has_many(
  "group_group_map_grantors",
  "Schema::Bugzilla::4_4rc2::Result::GroupGroupMap",
  { "foreign.grantor_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_group_map_members

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::GroupGroupMap>

=cut

__PACKAGE__->has_many(
  "group_group_map_members",
  "Schema::Bugzilla::4_4rc2::Result::GroupGroupMap",
  { "foreign.member_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedquery_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::NamedqueryGroupMap>

=cut

__PACKAGE__->has_many(
  "namedquery_group_maps",
  "Schema::Bugzilla::4_4rc2::Result::NamedqueryGroupMap",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::UserGroupMap>

=cut

__PACKAGE__->has_many(
  "user_group_maps",
  "Schema::Bugzilla::4_4rc2::Result::UserGroupMap",
  { "foreign.group_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 12:15:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JhEo9opl5g1jJHgeMNJm3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
