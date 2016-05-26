use utf8;
package Schema::Bugzilla::4_5_1::Result::UserGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_1::Result::UserGroupMap

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

=head1 TABLE: C<user_group_map>

=cut

__PACKAGE__->table("user_group_map");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 isbless

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 grant_type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "isbless",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "grant_type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<user_group_map_user_id_idx>

=over 4

=item * L</user_id>

=item * L</group_id>

=item * L</grant_type>

=item * L</isbless>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "user_group_map_user_id_idx",
  ["user_id", "group_id", "grant_type", "isbless"],
);

=head1 RELATIONS

=head2 group

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_1::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Bugzilla::4_5_1::Result::Group",
  { id => "group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::4_5_1::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dUvwB5Qh2vH+ljbNBmJUHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
