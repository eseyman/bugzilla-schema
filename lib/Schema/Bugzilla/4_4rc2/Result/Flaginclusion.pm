use utf8;
package Schema::Bugzilla::4_4rc2::Result::Flaginclusion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::Flaginclusion

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

=head1 TABLE: C<flaginclusions>

=cut

__PACKAGE__->table("flaginclusions");

=head1 ACCESSORS

=head2 type_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 1

=head2 component_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "type_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 1 },
  "component_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<flaginclusions_type_id_idx>

=over 4

=item * L</type_id>

=item * L</product_id>

=item * L</component_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "flaginclusions_type_id_idx",
  ["type_id", "product_id", "component_id"],
);

=head1 RELATIONS

=head2 component

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::Component>

=cut

__PACKAGE__->belongs_to(
  "component",
  "Schema::Bugzilla::4_4rc2::Result::Component",
  { id => "component_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 product

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::4_4rc2::Result::Product",
  { id => "product_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 type

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::Flagtype>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::Bugzilla::4_4rc2::Result::Flagtype",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:56:20
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E3iYq7SZYiSZSav5yMBN8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
