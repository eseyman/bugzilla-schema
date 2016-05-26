use utf8;
package Schema::Bugzilla::4_7_3::Result::Component;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_7_3::Result::Component

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
  is_nullable: 0

=head2 initialowner

  data_type: 'mediumint'
  is_nullable: 0

=head2 initialqacontact

  data_type: 'mediumint'
  is_nullable: 1

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "product_id",
  { data_type => "smallint", is_nullable => 0 },
  "initialowner",
  { data_type => "mediumint", is_nullable => 0 },
  "initialqacontact",
  { data_type => "mediumint", is_nullable => 1 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 21:32:32
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P8+4O3uxD9x1emwds+ZCog


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
