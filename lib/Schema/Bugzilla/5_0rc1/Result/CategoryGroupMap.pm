use utf8;
package Schema::Bugzilla::5_0rc1::Result::CategoryGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::CategoryGroupMap

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

=head1 TABLE: C<category_group_map>

=cut

__PACKAGE__->table("category_group_map");

=head1 ACCESSORS

=head2 category_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "category_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<category_group_map_category_id_idx>

=over 4

=item * L</category_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "category_group_map_category_id_idx",
  ["category_id", "group_id"],
);

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::SeriesCategory>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::Bugzilla::5_0rc1::Result::SeriesCategory",
  { id => "category_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 group

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Bugzilla::5_0rc1::Result::Group",
  { id => "group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:38:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3gKrSv8udbR91cUCJqUOtQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
