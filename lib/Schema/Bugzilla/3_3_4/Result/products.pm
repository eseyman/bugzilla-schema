use utf8;
package Schema::Bugzilla::3_3_4::Result::products;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_4::Result::products

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
  is_nullable: 0

=head2 description

  data_type: 'mediumtext'
  is_nullable: 1

=head2 milestoneurl

  data_type: 'tinytext'
  is_nullable: 0

=head2 disallownew

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 votesperuser

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 maxvotesperbug

  data_type: 'smallint'
  default_value: 10000
  is_nullable: 0

=head2 votestoconfirm

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 defaultmilestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "classification_id",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
  "milestoneurl",
  { data_type => "tinytext", is_nullable => 0 },
  "disallownew",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "votesperuser",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "maxvotesperbug",
  { data_type => "smallint", default_value => 10000, is_nullable => 0 },
  "votestoconfirm",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "defaultmilestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 20,
  },
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

=head2 components

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::components>

=cut

__PACKAGE__->has_many(
  "components",
  "Schema::Bugzilla::3_3_4::Result::components",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flagexclusions

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::flagexclusions>

=cut

__PACKAGE__->has_many(
  "flagexclusions",
  "Schema::Bugzilla::3_3_4::Result::flagexclusions",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flaginclusions

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::flaginclusions>

=cut

__PACKAGE__->has_many(
  "flaginclusions",
  "Schema::Bugzilla::3_3_4::Result::flaginclusions",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_control_maps

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::group_control_map>

=cut

__PACKAGE__->has_many(
  "group_control_maps",
  "Schema::Bugzilla::3_3_4::Result::group_control_map",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 milestones

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::milestones>

=cut

__PACKAGE__->has_many(
  "milestones",
  "Schema::Bugzilla::3_3_4::Result::milestones",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 versions

Type: has_many

Related object: L<Schema::Bugzilla::3_3_4::Result::versions>

=cut

__PACKAGE__->has_many(
  "versions",
  "Schema::Bugzilla::3_3_4::Result::versions",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 18:25:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PTc1/y6QREBWzu3dXER5uQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
