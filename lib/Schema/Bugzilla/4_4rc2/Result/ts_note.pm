use utf8;
package Schema::Bugzilla::4_4rc2::Result::ts_note;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::ts_note

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

=head1 TABLE: C<ts_note>

=cut

__PACKAGE__->table("ts_note");

=head1 ACCESSORS

=head2 jobid

  data_type: 'integer'
  is_nullable: 0

=head2 notekey

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 value

  data_type: 'longblob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "jobid",
  { data_type => "integer", is_nullable => 0 },
  "notekey",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "value",
  { data_type => "longblob", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<ts_note_jobid_idx>

=over 4

=item * L</jobid>

=item * L</notekey>

=back

=cut

__PACKAGE__->add_unique_constraint("ts_note_jobid_idx", ["jobid", "notekey"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:11:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0cR7HIXScF1CEl+ik+ur9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
