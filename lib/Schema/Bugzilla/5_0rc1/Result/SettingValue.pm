use utf8;
package Schema::Bugzilla::5_0rc1::Result::SettingValue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::SettingValue

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<setting_value>

=cut

__PACKAGE__->table("setting_value");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_foreign_key: 1
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
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 32 },
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

=head1 RELATIONS

=head2 name

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Setting>

=cut

__PACKAGE__->belongs_to(
  "name",
  "Schema::Bugzilla::5_0rc1::Result::Setting",
  { name => "name" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:41:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zdt38J38Jw4NKoTxi/xbvg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
