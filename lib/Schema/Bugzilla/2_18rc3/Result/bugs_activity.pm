use utf8;
package Schema::Bugzilla::2_18rc3::Result::bugs_activity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_18rc3::Result::bugs_activity

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

=head1 TABLE: C<bugs_activity>

=cut

__PACKAGE__->table("bugs_activity");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 attach_id

  data_type: 'mediumint'
  is_nullable: 1

=head2 who

  data_type: 'mediumint'
  is_nullable: 0

=head2 bug_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 fieldid

  data_type: 'mediumint'
  is_nullable: 0

=head2 added

  data_type: 'tinytext'
  is_nullable: 1

=head2 removed

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "attach_id",
  { data_type => "mediumint", is_nullable => 1 },
  "who",
  { data_type => "mediumint", is_nullable => 0 },
  "bug_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "fieldid",
  { data_type => "mediumint", is_nullable => 0 },
  "added",
  { data_type => "tinytext", is_nullable => 1 },
  "removed",
  { data_type => "tinytext", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A0FtkGh55bqs+N2cwHo4Yg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
