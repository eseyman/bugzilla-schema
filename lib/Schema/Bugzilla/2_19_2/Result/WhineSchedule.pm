use utf8;
package Schema::Bugzilla::2_19_2::Result::WhineSchedule;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_19_2::Result::WhineSchedule

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

=head1 TABLE: C<whine_schedules>

=cut

__PACKAGE__->table("whine_schedules");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 eventid

  data_type: 'mediumint'
  is_nullable: 0

=head2 run_day

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 run_time

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 run_next

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 mailto_userid

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "eventid",
  { data_type => "mediumint", is_nullable => 0 },
  "run_day",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "run_time",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "run_next",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "mailto_userid",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 15:46:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZBaPsfGQFiZWKE+INH+zNg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;