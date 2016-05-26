use utf8;
package Schema::Bugzilla::4_3_2::Result::components;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_2::Result::components

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

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 initialowner

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 initialqacontact

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "initialowner",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "initialqacontact",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "isactive",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<components_product_id_idx>

=over 4

=item * L</product_id>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("components_product_id_idx", ["product_id", "name"]);

=head1 RELATIONS

=head2 bugs

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::bugs>

=cut

__PACKAGE__->has_many(
  "bugs",
  "Schema::Bugzilla::4_3_2::Result::bugs",
  { "foreign.component_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 component_ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::component_cc>

=cut

__PACKAGE__->has_many(
  "component_ccs",
  "Schema::Bugzilla::4_3_2::Result::component_cc",
  { "foreign.component_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagexclusions

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::flagexclusions>

=cut

__PACKAGE__->has_many(
  "flagexclusions",
  "Schema::Bugzilla::4_3_2::Result::flagexclusions",
  { "foreign.component_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flaginclusions

Type: has_many

Related object: L<Schema::Bugzilla::4_3_2::Result::flaginclusions>

=cut

__PACKAGE__->has_many(
  "flaginclusions",
  "Schema::Bugzilla::4_3_2::Result::flaginclusions",
  { "foreign.component_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 initialowner

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "initialowner",
  "Schema::Bugzilla::4_3_2::Result::profiles",
  { userid => "initialowner" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 initialqacontact

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "initialqacontact",
  "Schema::Bugzilla::4_3_2::Result::profiles",
  { userid => "initialqacontact" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "CASCADE",
  },
);

=head2 product

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::products>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::4_3_2::Result::products",
  { id => "product_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:13:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SWmNWXVX8gbBsiFDhK34FQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
