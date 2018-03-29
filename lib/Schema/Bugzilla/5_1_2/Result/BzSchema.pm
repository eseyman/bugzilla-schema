use utf8;
package Schema::Bugzilla::5_1_2::Result::BzSchema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_2::Result::BzSchema

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

=head1 TABLE: C<bz_schema>

=cut

__PACKAGE__->table("bz_schema");

=head1 ACCESSORS

=head2 schema_data

  data_type: 'longblob'
  is_nullable: 0

=head2 version

  data_type: 'decimal'
  is_nullable: 0
  size: [3,2]

=cut

__PACKAGE__->add_columns(
  "schema_data",
  { data_type => "longblob", is_nullable => 0 },
  "version",
  { data_type => "decimal", is_nullable => 0, size => [3, 2] },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bz_schema_version_idx>

=over 4

=item * L</version>

=back

=cut

__PACKAGE__->add_unique_constraint("bz_schema_version_idx", ["version"]);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-03-29 21:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KbhU4O0yVgYalPWMGgwjvg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
