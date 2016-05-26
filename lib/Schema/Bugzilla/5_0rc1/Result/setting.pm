use utf8;
package Schema::Bugzilla::5_0rc1::Result::setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::setting

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

=head1 TABLE: C<setting>

=cut

__PACKAGE__->table("setting");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 default_value

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 is_enabled

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 subclass

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "default_value",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "is_enabled",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "subclass",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->set_primary_key("name");

=head1 RELATIONS

=head2 profile_settings

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::profile_setting>

=cut

__PACKAGE__->has_many(
  "profile_settings",
  "Schema::Bugzilla::5_0rc1::Result::profile_setting",
  { "foreign.setting_name" => "self.name" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 setting_values

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::setting_value>

=cut

__PACKAGE__->has_many(
  "setting_values",
  "Schema::Bugzilla::5_0rc1::Result::setting_value",
  { "foreign.name" => "self.name" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:00:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Vvf7L3Ie2Za1FYyEjwab/w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
