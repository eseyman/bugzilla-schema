use utf8;
package Schema::Bugzilla::5_0_6::Result::Product;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_6::Result::Product

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

=head1 TABLE: C<products>

=cut

__PACKAGE__->table("products");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 classification_id

  data_type: 'smallint'
  default_value: 1
  is_foreign_key: 1
  is_nullable: 0

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 defaultmilestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 64

=head2 allows_unconfirmed

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "classification_id",
  {
    data_type      => "smallint",
    default_value  => 1,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "isactive",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "defaultmilestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 64,
  },
  "allows_unconfirmed",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<products_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("products_name_idx", ["name"]);

=head1 RELATIONS

=head2 bugs

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Bug>

=cut

__PACKAGE__->has_many(
  "bugs",
  "Schema::Bugzilla::5_0_6::Result::Bug",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 classification

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_6::Result::Classification>

=cut

__PACKAGE__->belongs_to(
  "classification",
  "Schema::Bugzilla::5_0_6::Result::Classification",
  { id => "classification_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 components

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Component>

=cut

__PACKAGE__->has_many(
  "components",
  "Schema::Bugzilla::5_0_6::Result::Component",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagexclusions

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Flagexclusion>

=cut

__PACKAGE__->has_many(
  "flagexclusions",
  "Schema::Bugzilla::5_0_6::Result::Flagexclusion",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flaginclusions

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Flaginclusion>

=cut

__PACKAGE__->has_many(
  "flaginclusions",
  "Schema::Bugzilla::5_0_6::Result::Flaginclusion",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_control_maps

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::GroupControlMap>

=cut

__PACKAGE__->has_many(
  "group_control_maps",
  "Schema::Bugzilla::5_0_6::Result::GroupControlMap",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 milestones

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Milestone>

=cut

__PACKAGE__->has_many(
  "milestones",
  "Schema::Bugzilla::5_0_6::Result::Milestone",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 versions

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::Version>

=cut

__PACKAGE__->has_many(
  "versions",
  "Schema::Bugzilla::5_0_6::Result::Version",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:50:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Qa8/d8NSpO//KqlGObgn4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
