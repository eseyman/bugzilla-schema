use utf8;
package Schema::Bugzilla::5_0rc1::Result::GroupGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::GroupGroupMap

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
  is_foreign_key: 1
  is_nullable: 0

=head2 grantor_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 grant_type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "member_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "grantor_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
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

=head1 RELATIONS

=head2 grantor

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "grantor",
  "Schema::Bugzilla::5_0rc1::Result::Group",
  { id => "grantor_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 member

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "member",
  "Schema::Bugzilla::5_0rc1::Result::Group",
  { id => "member_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:38:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XILux7ssNyekARkPbq46TA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
