use utf8;
package Schema::Bugzilla::2_0::Result::bugs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_0::Result::bugs

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

  data_type: 'text'
  is_nullable: 1

=head2 bug_severity

  data_type: 'enum'
  extra: {list => ["critical","major","normal","minor","trivial","enhancement"]}
  is_nullable: 0

=head2 bug_status

  data_type: 'enum'
  extra: {list => ["NEW","ASSIGNED","REOPENED","RESOLVED","VERIFIED","CLOSED"]}
  is_nullable: 0

=head2 creation_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 delta_ts

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 short_desc

  data_type: 'mediumtext'
  is_nullable: 1

=head2 long_desc

  data_type: 'mediumtext'
  is_nullable: 1

=head2 op_sys

  data_type: 'tinytext'
  is_nullable: 1

=head2 priority

  data_type: 'enum'
  extra: {list => ["P1","P2","P3","P4","P5"]}
  is_nullable: 0

=head2 product

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 rep_platform

  data_type: 'enum'
  extra: {list => ["All","DEC","HP","Macintosh","PC","SGI","Sun","X-Windows","Other"]}
  is_nullable: 1

=head2 reporter

  data_type: 'mediumint'
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 area

  data_type: 'enum'
  extra: {list => ["BUILD","CODE","CONTENT","DOC","PERFORMANCE","TEST","UI","i18n","l10n"]}
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 resolution

  data_type: 'enum'
  extra: {list => ["","FIXED","INVALID","WONTFIX","LATER","REMIND","DUPLICATE","WORKSFORME"]}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "assigned_to",
  { data_type => "mediumint", is_nullable => 0 },
  "bug_file_loc",
  { data_type => "text", is_nullable => 1 },
  "bug_severity",
  {
    data_type => "enum",
    extra => {
      list => ["critical", "major", "normal", "minor", "trivial", "enhancement"],
    },
    is_nullable => 0,
  },
  "bug_status",
  {
    data_type => "enum",
    extra => {
      list => ["NEW", "ASSIGNED", "REOPENED", "RESOLVED", "VERIFIED", "CLOSED"],
    },
    is_nullable => 0,
  },
  "creation_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "delta_ts",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "short_desc",
  { data_type => "mediumtext", is_nullable => 1 },
  "long_desc",
  { data_type => "mediumtext", is_nullable => 1 },
  "op_sys",
  { data_type => "tinytext", is_nullable => 1 },
  "priority",
  {
    data_type => "enum",
    extra => { list => ["P1" .. "P5"] },
    is_nullable => 0,
  },
  "product",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "rep_platform",
  {
    data_type => "enum",
    extra => {
      list => [
        "All",
        "DEC",
        "HP",
        "Macintosh",
        "PC",
        "SGI",
        "Sun",
        "X-Windows",
        "Other",
      ],
    },
    is_nullable => 1,
  },
  "reporter",
  { data_type => "mediumint", is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "area",
  {
    data_type => "enum",
    extra => {
      list => [
        "BUILD",
        "CODE",
        "CONTENT",
        "DOC",
        "PERFORMANCE",
        "TEST",
        "UI",
        "i18n",
        "l10n",
      ],
    },
    is_nullable => 0,
  },
  "component",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "resolution",
  {
    data_type => "enum",
    extra => {
      list => [
        "",
        "FIXED",
        "INVALID",
        "WONTFIX",
        "LATER",
        "REMIND",
        "DUPLICATE",
        "WORKSFORME",
      ],
    },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</bug_id>

=back

=cut

__PACKAGE__->set_primary_key("bug_id");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-01 22:53:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:okORJTyz0BNQuUEz+Qg6zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
