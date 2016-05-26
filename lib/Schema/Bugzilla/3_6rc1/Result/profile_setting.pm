use utf8;
package Schema::Bugzilla::3_6rc1::Result::profile_setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_6rc1::Result::profile_setting

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

=head1 TABLE: C<profile_setting>

=cut

__PACKAGE__->table("profile_setting");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 setting_name

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 32

=head2 setting_value

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "setting_name",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 32 },
  "setting_value",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<profile_setting_value_unique_idx>

=over 4

=item * L</user_id>

=item * L</setting_name>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "profile_setting_value_unique_idx",
  ["user_id", "setting_name"],
);

=head1 RELATIONS

=head2 setting_name

Type: belongs_to

Related object: L<Schema::Bugzilla::3_6rc1::Result::setting>

=cut

__PACKAGE__->belongs_to(
  "setting_name",
  "Schema::Bugzilla::3_6rc1::Result::setting",
  { name => "setting_name" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::3_6rc1::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::3_6rc1::Result::profiles",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 02:26:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:08sOKCPR4mg5QKmRhbBqLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
