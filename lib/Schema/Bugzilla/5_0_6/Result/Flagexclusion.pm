use utf8;
package Schema::Bugzilla::5_0_6::Result::Flagexclusion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_6::Result::Flagexclusion

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

=head1 TABLE: C<flagexclusions>

=cut

__PACKAGE__->table("flagexclusions");

=head1 ACCESSORS

=head2 type_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 1

=head2 component_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "type_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 1 },
  "component_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<flagexclusions_type_id_idx>

=over 4

=item * L</type_id>

=item * L</product_id>

=item * L</component_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "flagexclusions_type_id_idx",
  ["type_id", "product_id", "component_id"],
);

=head1 RELATIONS

=head2 component

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_6::Result::Component>

=cut

__PACKAGE__->belongs_to(
  "component",
  "Schema::Bugzilla::5_0_6::Result::Component",
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

Related object: L<Schema::Bugzilla::5_0_6::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::5_0_6::Result::Product",
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

Related object: L<Schema::Bugzilla::5_0_6::Result::Flagtype>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::Bugzilla::5_0_6::Result::Flagtype",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:50:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lqQShqoVE1dBO+QI3Q8o6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
