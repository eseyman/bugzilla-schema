use utf8;
package Schema::Bugzilla::2_22rc1::Result::category_group_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_22rc1::Result::category_group_map

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
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "category_id",
  { data_type => "smallint", is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 09:31:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IwYfARBdEjwUb+Rdpsr8Lg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
