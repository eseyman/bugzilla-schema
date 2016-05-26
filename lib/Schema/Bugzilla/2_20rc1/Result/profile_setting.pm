use utf8;
package Schema::Bugzilla::2_20rc1::Result::profile_setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_20rc1::Result::profile_setting

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
  is_nullable: 0

=head2 setting_name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 setting_value

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_nullable => 0 },
  "setting_name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 09:47:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/BvGybi6NUMiF4B15J4y0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
