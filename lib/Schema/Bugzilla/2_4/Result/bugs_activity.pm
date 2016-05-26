use utf8;
package Schema::Bugzilla::2_4::Result::bugs_activity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_4::Result::bugs_activity

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

=head2 who

  data_type: 'mediumint'
  is_nullable: 0

=head2 when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 field

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 oldvalue

  data_type: 'tinytext'
  is_nullable: 1

=head2 newvalue

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "who",
  { data_type => "mediumint", is_nullable => 0 },
  "when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "field",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "oldvalue",
  { data_type => "tinytext", is_nullable => 1 },
  "newvalue",
  { data_type => "tinytext", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-01 22:50:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1n1cn44+VyrQtGjOxAV86w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
