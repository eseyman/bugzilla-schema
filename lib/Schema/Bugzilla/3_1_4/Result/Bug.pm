use utf8;
package Schema::Bugzilla::3_1_4::Result::Bug;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_4::Result::Bug

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
  is_nullable: 0

=head2 bug_file_loc

  data_type: 'mediumtext'
  is_nullable: 1

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
  is_nullable: 0

=head2 rep_platform

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 reporter

  data_type: 'mediumint'
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 component_id

  data_type: 'smallint'
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
  size: 20

=head2 qa_contact

  data_type: 'mediumint'
  is_nullable: 1

=head2 status_whiteboard

  data_type: 'mediumtext'
  is_nullable: 0

=head2 votes

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 0

=head2 keywords

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
  size: [5,2]

=head2 remaining_time

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [5,2]

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
  { data_type => "mediumint", is_nullable => 0 },
  "bug_file_loc",
  { data_type => "mediumtext", is_nullable => 1 },
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
  { data_type => "smallint", is_nullable => 0 },
  "rep_platform",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "reporter",
  { data_type => "mediumint", is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "component_id",
  { data_type => "smallint", is_nullable => 0 },
  "resolution",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "target_milestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 20,
  },
  "qa_contact",
  { data_type => "mediumint", is_nullable => 1 },
  "status_whiteboard",
  { data_type => "mediumtext", is_nullable => 0 },
  "votes",
  { data_type => "mediumint", default_value => 0, is_nullable => 0 },
  "keywords",
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
    size => [5, 2],
  },
  "remaining_time",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [5, 2],
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lBC9OZt9i/JWrjNEsVFOpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
