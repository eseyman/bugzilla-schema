use utf8;
package Schema::Bugzilla::4_0rc1::Result::series;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0rc1::Result::series

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
  is_foreign_key: 1
  is_nullable: 1

=head2 category

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 subcategory

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 frequency

  data_type: 'smallint'
  is_nullable: 0

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
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "category",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "subcategory",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "frequency",
  { data_type => "smallint", is_nullable => 0 },
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

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::series_categories>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::Bugzilla::4_0rc1::Result::series_categories",
  { id => "category" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 creator

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "creator",
  "Schema::Bugzilla::4_0rc1::Result::profiles",
  { userid => "creator" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 series_datas

Type: has_many

Related object: L<Schema::Bugzilla::4_0rc1::Result::series_data>

=cut

__PACKAGE__->has_many(
  "series_datas",
  "Schema::Bugzilla::4_0rc1::Result::series_data",
  { "foreign.series_id" => "self.series_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 subcategory

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::series_categories>

=cut

__PACKAGE__->belongs_to(
  "subcategory",
  "Schema::Bugzilla::4_0rc1::Result::series_categories",
  { id => "subcategory" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:29:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QHEkm/zt8KD7iJCoicab0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
