use utf8;
package Schema::Bugzilla::5_0rc1::Result::TsError;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::TsError

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

=head1 TABLE: C<ts_error>

=cut

__PACKAGE__->table("ts_error");

=head1 ACCESSORS

=head2 error_time

  data_type: 'integer'
  is_nullable: 0

=head2 jobid

  data_type: 'integer'
  is_nullable: 0

=head2 message

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 funcid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "error_time",
  { data_type => "integer", is_nullable => 0 },
  "jobid",
  { data_type => "integer", is_nullable => 0 },
  "message",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "funcid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:41:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2qFO6/Y8LXY7XGPJPsGreA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
