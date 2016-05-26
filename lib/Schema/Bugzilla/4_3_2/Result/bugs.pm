use utf8;
package Schema::Bugzilla::4_3_2::Result::bugs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_2::Result::bugs

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

=head1 TABLE: C<bugs>

=cut

__PACKAGE__->table("bugs");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 assigned_to

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_file_loc

  data_type: 'mediumtext'
  is_nullable: 0

=head2 bug_severity

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 bug_status

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 creation_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 delta_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 short_desc

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 op_sys

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 priority

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 rep_platform

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 reporter

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 component_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 resolution

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 target_milestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 64

=head2 qa_contact

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 status_whiteboard

  data_type: 'mediumtext'
  is_nullable: 0

=head2 lastdiffed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 everconfirmed

  data_type: 'tinyint'
  is_nullable: 0

=head2 reporter_accessible

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 cclist_accessible

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 estimated_time

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [7,2]

=head2 remaining_time

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [7,2]

=head2 deadline

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 alias

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "assigned_to",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_file_loc",
  { data_type => "mediumtext", is_nullable => 0 },
  "bug_severity",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "bug_status",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "creation_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "delta_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "short_desc",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "op_sys",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "priority",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "rep_platform",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "reporter",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "component_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "resolution",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "target_milestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 64,
  },
  "qa_contact",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "status_whiteboard",
  { data_type => "mediumtext", is_nullable => 0 },
  "lastdiffed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "everconfirmed",
  { data_type => "tinyint", is_nullable => 0 },
  "reporter_accessible",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "cclist_accessible",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "estimated_time",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [7, 2],
  },
  "remaining_time",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [7, 2],
  },
  "deadline",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "alias",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</bug_id>

=back

=cut

__PACKAGE__->set_primary_key("bug_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<bugs_alias_idx>

=over 4

=item * L</alias>

=back

=cut

__PACKAGE__->add_unique_constraint("bugs_alias_idx", ["alias"]);

=head1 RELATIONS

=head2 assigned_to

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "assigned_to",
  "Schema::Bugzilla::4_3_2::Result::profiles",
  { userid => "assigned_to" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 attachments

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::attachments>

=cut

__PACKAGE__->has_many(
  "attachments",
  "Schema::Bugzilla::4_3_2::Result::attachments",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bug_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::bug_group_map>

=cut

__PACKAGE__->has_many(
  "bug_group_maps",
  "Schema::Bugzilla::4_3_2::Result::bug_group_map",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bug_tags

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::bug_tag>

=cut

__PACKAGE__->has_many(
  "bug_tags",
  "Schema::Bugzilla::4_3_2::Result::bug_tag",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::bugs_activity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::4_3_2::Result::bugs_activity",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_see_also

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::bug_see_also>

=cut

__PACKAGE__->has_many(
  "bugs_see_also",
  "Schema::Bugzilla::4_3_2::Result::bug_see_also",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::cc>

=cut

__PACKAGE__->has_many(
  "ccs",
  "Schema::Bugzilla::4_3_2::Result::cc",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 component

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::components>

=cut

__PACKAGE__->belongs_to(
  "component",
  "Schema::Bugzilla::4_3_2::Result::components",
  { id => "component_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 dependencies_blocked

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::dependencies>

=cut

__PACKAGE__->has_many(
  "dependencies_blocked",
  "Schema::Bugzilla::4_3_2::Result::dependencies",
  { "foreign.blocked" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dependencies_dependsons

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::dependencies>

=cut

__PACKAGE__->has_many(
  "dependencies_dependsons",
  "Schema::Bugzilla::4_3_2::Result::dependencies",
  { "foreign.dependson" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 duplicates_dupe

Type: might_have

Related object: L<Schema::Bugzilla::4_3_2::Result::duplicates>

=cut

__PACKAGE__->might_have(
  "duplicates_dupe",
  "Schema::Bugzilla::4_3_2::Result::duplicates",
  { "foreign.dupe" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 duplicates_dupes_of

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::duplicates>

=cut

__PACKAGE__->has_many(
  "duplicates_dupes_of",
  "Schema::Bugzilla::4_3_2::Result::duplicates",
  { "foreign.dupe_of" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::flags>

=cut

__PACKAGE__->has_many(
  "flags",
  "Schema::Bugzilla::4_3_2::Result::flags",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 keywords

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::keywords>

=cut

__PACKAGE__->has_many(
  "keywords",
  "Schema::Bugzilla::4_3_2::Result::keywords",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::longdescs>

=cut

__PACKAGE__->has_many(
  "longdescs",
  "Schema::Bugzilla::4_3_2::Result::longdescs",
  { "foreign.bug_id" => "self.bug_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 product

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::products>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::4_3_2::Result::products",
  { id => "product_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 qa_contact

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "qa_contact",
  "Schema::Bugzilla::4_3_2::Result::profiles",
  { userid => "qa_contact" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "CASCADE",
  },
);

=head2 reporter

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "reporter",
  "Schema::Bugzilla::4_3_2::Result::profiles",
  { userid => "reporter" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:13:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Cg0+o4gE/ntLSZMH5SwWhw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
