use utf8;
package Schema::Bugzilla::3_6rc1::Result::ts_exitstatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_6rc1::Result::ts_exitstatus

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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 02:26:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xy6FeZiAMmO07hosCRXLXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
