use utf8;
package Schema::Bugzilla::2_17_5::Result::SeriesData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_5::Result::SeriesData

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
  is_nullable: 0

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 value

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "series_id",
  { data_type => "mediumint", is_nullable => 0 },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "value",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<series_id>

=over 4

=item * L</series_id>

=item * L</date>

=back

=cut

__PACKAGE__->add_unique_constraint("series_id", ["series_id", "date"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YXNGu3ubukK9o8y/H7eJHw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
