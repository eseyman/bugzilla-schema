use utf8;
package Schema::Bugzilla::3_3_1::Result::ts_job;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_1::Result::ts_job

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

=head1 TABLE: C<ts_job>

=cut

__PACKAGE__->table("ts_job");

=head1 ACCESSORS

=head2 jobid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 funcid

  data_type: 'integer'
  is_nullable: 0

=head2 arg

  data_type: 'longblob'
  is_nullable: 1

=head2 uniqkey

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 insert_time

  data_type: 'integer'
  is_nullable: 1

=head2 run_after

  data_type: 'integer'
  is_nullable: 0

=head2 grabbed_until

  data_type: 'integer'
  is_nullable: 0

=head2 priority

  data_type: 'smallint'
  is_nullable: 1

=head2 coalesce

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "jobid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "funcid",
  { data_type => "integer", is_nullable => 0 },
  "arg",
  { data_type => "longblob", is_nullable => 1 },
  "uniqkey",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "insert_time",
  { data_type => "integer", is_nullable => 1 },
  "run_after",
  { data_type => "integer", is_nullable => 0 },
  "grabbed_until",
  { data_type => "integer", is_nullable => 0 },
  "priority",
  { data_type => "smallint", is_nullable => 1 },
  "coalesce",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</jobid>

=back

=cut

__PACKAGE__->set_primary_key("jobid");

=head1 UNIQUE CONSTRAINTS

=head2 C<ts_job_funcid_idx>

=over 4

=item * L</funcid>

=item * L</uniqkey>

=back

=cut

__PACKAGE__->add_unique_constraint("ts_job_funcid_idx", ["funcid", "uniqkey"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 18:18:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nOx3K/yUmawLKhDj7hOTzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
