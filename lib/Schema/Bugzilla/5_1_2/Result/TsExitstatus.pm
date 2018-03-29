use utf8;
package Schema::Bugzilla::5_1_2::Result::TsExitstatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_2::Result::TsExitstatus

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<ts_exitstatus>

=cut

__PACKAGE__->table("ts_exitstatus");

=head1 ACCESSORS

=head2 jobid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 funcid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 status

  data_type: 'smallint'
  is_nullable: 1

=head2 completion_time

  data_type: 'integer'
  is_nullable: 1

=head2 delete_after

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "jobid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "funcid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "status",
  { data_type => "smallint", is_nullable => 1 },
  "completion_time",
  { data_type => "integer", is_nullable => 1 },
  "delete_after",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</jobid>

=back

=cut

__PACKAGE__->set_primary_key("jobid");


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-03-29 21:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zYCep8gMx1J5+MWzwUA7OQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
