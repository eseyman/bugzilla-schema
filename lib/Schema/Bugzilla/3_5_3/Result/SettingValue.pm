use utf8;
package Schema::Bugzilla::3_5_3::Result::SettingValue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_5_3::Result::SettingValue

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

=head1 TABLE: C<setting_value>

=cut

__PACKAGE__->table("setting_value");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 sortindex

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "sortindex",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<setting_value_ns_unique_idx>

=over 4

=item * L</name>

=item * L</sortindex>

=back

=cut

__PACKAGE__->add_unique_constraint("setting_value_ns_unique_idx", ["name", "sortindex"]);

=head2 C<setting_value_nv_unique_idx>

=over 4

=item * L</name>

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("setting_value_nv_unique_idx", ["name", "value"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 23:36:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OQntQYgxxhZYbsQas2NKBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
