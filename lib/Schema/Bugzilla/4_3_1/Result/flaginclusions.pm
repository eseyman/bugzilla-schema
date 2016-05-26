use utf8;
package Schema::Bugzilla::4_3_1::Result::flaginclusions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_1::Result::flaginclusions

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

=head1 RELATIONS

=head2 component

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_1::Result::components>

=cut

__PACKAGE__->belongs_to(
  "component",
  "Schema::Bugzilla::4_3_1::Result::components",
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

Related object: L<Schema::Bugzilla::4_3_1::Result::products>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::4_3_1::Result::products",
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

Related object: L<Schema::Bugzilla::4_3_1::Result::flagtypes>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::Bugzilla::4_3_1::Result::flagtypes",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:13:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zjdmk9kpZEYL+QjTsO56dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
