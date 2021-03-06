use utf8;
package Schema::Bugzilla::2_17_1::Result::bugs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_1::Result::bugs

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
  extra: {list => ["blocker","critical","major","normal","minor","trivial","enhancement"]}
  is_nullable: 0

=head2 bug_status

  data_type: 'enum'
  extra: {list => ["UNCONFIRMED","NEW","ASSIGNED","REOPENED","RESOLVED","VERIFIED","CLOSED"]}
  is_nullable: 0

=head2 creation_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 delta_ts

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 short_desc

  data_type: 'mediumtext'
  is_nullable: 1

=head2 op_sys

  data_type: 'enum'
  extra: {list => ["All","Windows 3.1","Windows 95","Windows 98","Windows ME","Windows 2000","Windows NT","Windows XP","Mac System 7","Mac System 7.5","Mac System 7.6.1","Mac System 8.0","Mac System 8.5","Mac System 8.6","Mac System 9.x","Mac OS X 10.0","Mac OS X 10.1","Mac OS X 10.2","Linux","BSDI","FreeBSD","NetBSD","OpenBSD","AIX","BeOS","HP-UX","IRIX","Neutrino","OpenVMS","OS/2","OSF/1","Solaris","SunOS","other"]}
  is_nullable: 0

=head2 priority

  data_type: 'enum'
  extra: {list => ["P1","P2","P3","P4","P5"]}
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_nullable: 0

=head2 rep_platform

  data_type: 'enum'
  extra: {list => ["All","DEC","HP","Macintosh","PC","SGI","Sun","Other"]}
  is_nullable: 1

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

  data_type: 'enum'
  extra: {list => ["","FIXED","INVALID","WONTFIX","LATER","REMIND","DUPLICATE","WORKSFORME","MOVED"]}
  is_nullable: 0

=head2 target_milestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 20

=head2 qa_contact

  data_type: 'mediumint'
  is_nullable: 0

=head2 status_whiteboard

  data_type: 'mediumtext'
  is_nullable: 0

=head2 votes

  data_type: 'mediumint'
  is_nullable: 0

=head2 keywords

  data_type: 'mediumtext'
  is_nullable: 0

=head2 lastdiffed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

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
  { data_type => "text", is_nullable => 1 },
  "bug_severity",
  {
    data_type => "enum",
    extra => {
      list => [
        "blocker",
        "critical",
        "major",
        "normal",
        "minor",
        "trivial",
        "enhancement",
      ],
    },
    is_nullable => 0,
  },
  "bug_status",
  {
    data_type => "enum",
    extra => {
      list => [
        "UNCONFIRMED",
        "NEW",
        "ASSIGNED",
        "REOPENED",
        "RESOLVED",
        "VERIFIED",
        "CLOSED",
      ],
    },
    is_nullable => 0,
  },
  "creation_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
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
  "op_sys",
  {
    data_type => "enum",
    extra => {
      list => [
        "All",
        "Windows 3.1",
        "Windows 95",
        "Windows 98",
        "Windows ME",
        "Windows 2000",
        "Windows NT",
        "Windows XP",
        "Mac System 7",
        "Mac System 7.5",
        "Mac System 7.6.1",
        "Mac System 8.0",
        "Mac System 8.5",
        "Mac System 8.6",
        "Mac System 9.x",
        "Mac OS X 10.0",
        "Mac OS X 10.1",
        "Mac OS X 10.2",
        "Linux",
        "BSDI",
        "FreeBSD",
        "NetBSD",
        "OpenBSD",
        "AIX",
        "BeOS",
        "HP-UX",
        "IRIX",
        "Neutrino",
        "OpenVMS",
        "OS/2",
        "OSF/1",
        "Solaris",
        "SunOS",
        "other",
      ],
    },
    is_nullable => 0,
  },
  "priority",
  {
    data_type => "enum",
    extra => { list => ["P1" .. "P5"] },
    is_nullable => 0,
  },
  "product_id",
  { data_type => "smallint", is_nullable => 0 },
  "rep_platform",
  {
    data_type => "enum",
    extra => {
      list => ["All", "DEC", "HP", "Macintosh", "PC", "SGI", "Sun", "Other"],
    },
    is_nullable => 1,
  },
  "reporter",
  { data_type => "mediumint", is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "component_id",
  { data_type => "smallint", is_nullable => 0 },
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
        "MOVED",
      ],
    },
    is_nullable => 0,
  },
  "target_milestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 20,
  },
  "qa_contact",
  { data_type => "mediumint", is_nullable => 0 },
  "status_whiteboard",
  { data_type => "mediumtext", is_nullable => 0 },
  "votes",
  { data_type => "mediumint", is_nullable => 0 },
  "keywords",
  { data_type => "mediumtext", is_nullable => 0 },
  "lastdiffed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
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

=head2 C<alias>

=over 4

=item * L</alias>

=back

=cut

__PACKAGE__->add_unique_constraint("alias", ["alias"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:36:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:60Je5qPkasI4s3t34T+O5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
