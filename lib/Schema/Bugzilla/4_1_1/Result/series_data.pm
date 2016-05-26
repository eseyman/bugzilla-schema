use utf8;
package Schema::Bugzilla::4_1_1::Result::series_data;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_1_1::Result::series_data

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

=head1 TABLE: C<series_data>

=cut

__PACKAGE__->table("series_data");

=head1 ACCESSORS

=head2 series_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 series_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 series_value

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "series_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "series_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "series_value",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<series_data_series_id_idx>

=over 4

=item * L</series_id>

=item * L</series_date>

=back

=cut

__PACKAGE__->add_unique_constraint("series_data_series_id_idx", ["series_id", "series_date"]);

=head1 RELATIONS

=head2 series

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::series>

=cut

__PACKAGE__->belongs_to(
  "series",
  "Schema::Bugzilla::4_1_1::Result::series",
  { series_id => "series_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:26:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2ffxLCcvUQsSyI0UzJoXwg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
