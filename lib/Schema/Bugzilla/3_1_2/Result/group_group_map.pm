use utf8;
package Schema::Bugzilla::3_1_2::Result::group_group_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_2::Result::group_group_map

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

=head1 TABLE: C<group_group_map>

=cut

__PACKAGE__->table("group_group_map");

=head1 ACCESSORS

=head2 member_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 grantor_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 grant_type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "member_id",
  { data_type => "mediumint", is_nullable => 0 },
  "grantor_id",
  { data_type => "mediumint", is_nullable => 0 },
  "grant_type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<group_group_map_member_id_idx>

=over 4

=item * L</member_id>

=item * L</grantor_id>

=item * L</grant_type>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "group_group_map_member_id_idx",
  ["member_id", "grantor_id", "grant_type"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 22:46:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WH9isoqgbrCCfO2hzo1OOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
