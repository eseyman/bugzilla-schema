use utf8;
package Schema::Bugzilla::2_22rc1::Result::group_control_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_22rc1::Result::group_control_map

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

=head1 TABLE: C<group_control_map>

=cut

__PACKAGE__->table("group_control_map");

=head1 ACCESSORS

=head2 group_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 product_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 entry

  data_type: 'tinyint'
  is_nullable: 0

=head2 membercontrol

  data_type: 'tinyint'
  is_nullable: 0

=head2 othercontrol

  data_type: 'tinyint'
  is_nullable: 0

=head2 canedit

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "mediumint", is_nullable => 0 },
  "product_id",
  { data_type => "mediumint", is_nullable => 0 },
  "entry",
  { data_type => "tinyint", is_nullable => 0 },
  "membercontrol",
  { data_type => "tinyint", is_nullable => 0 },
  "othercontrol",
  { data_type => "tinyint", is_nullable => 0 },
  "canedit",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<group_control_map_product_id_idx>

=over 4

=item * L</product_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "group_control_map_product_id_idx",
  ["product_id", "group_id"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 09:31:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7Nh9dRs1issASajOHlOY0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
