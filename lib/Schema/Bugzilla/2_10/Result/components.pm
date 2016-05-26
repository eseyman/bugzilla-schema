use utf8;
package Schema::Bugzilla::2_10::Result::components;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_10::Result::components

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

=head1 TABLE: C<components>

=cut

__PACKAGE__->table("components");

=head1 ACCESSORS

=head2 value

  data_type: 'tinytext'
  is_nullable: 1

=head2 program

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 initialowner

  data_type: 'tinytext'
  is_nullable: 0

=head2 initialqacontact

  data_type: 'tinytext'
  is_nullable: 0

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "value",
  { data_type => "tinytext", is_nullable => 1 },
  "program",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "initialowner",
  { data_type => "tinytext", is_nullable => 0 },
  "initialqacontact",
  { data_type => "tinytext", is_nullable => 0 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-01 22:19:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:X5AqLh10mgj2GcvDrNx9+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
