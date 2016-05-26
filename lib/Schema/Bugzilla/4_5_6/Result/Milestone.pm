use utf8;
package Schema::Bugzilla::4_5_6::Result::Milestone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_6::Result::Milestone

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

=head1 TABLE: C<milestones>

=cut

__PACKAGE__->table("milestones");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
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

=head2 C<milestones_product_id_idx>

=over 4

=item * L</product_id>

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("milestones_product_id_idx", ["product_id", "value"]);

=head1 RELATIONS

=head2 product

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_6::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::4_5_6::Result::Product",
  { id => "product_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:37:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/+IOl6eK7ROUfoaVSTKIgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
