use utf8;
package Schema::Bugzilla::3_1_3::Result::Series;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_3::Result::Series

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

=head1 TABLE: C<series>

=cut

__PACKAGE__->table("series");

=head1 ACCESSORS

=head2 series_id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 creator

  data_type: 'mediumint'
  is_nullable: 1

=head2 category

  data_type: 'smallint'
  is_nullable: 0

=head2 subcategory

  data_type: 'smallint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 frequency

  data_type: 'smallint'
  is_nullable: 0

=head2 last_viewed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 query

  data_type: 'mediumtext'
  is_nullable: 0

=head2 is_public

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "series_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "creator",
  { data_type => "mediumint", is_nullable => 1 },
  "category",
  { data_type => "smallint", is_nullable => 0 },
  "subcategory",
  { data_type => "smallint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "frequency",
  { data_type => "smallint", is_nullable => 0 },
  "last_viewed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "query",
  { data_type => "mediumtext", is_nullable => 0 },
  "is_public",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</series_id>

=back

=cut

__PACKAGE__->set_primary_key("series_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<series_creator_idx>

=over 4

=item * L</creator>

=item * L</category>

=item * L</subcategory>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "series_creator_idx",
  ["creator", "category", "subcategory", "name"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Od1EX9FbcUA3isg9L7oX5w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
