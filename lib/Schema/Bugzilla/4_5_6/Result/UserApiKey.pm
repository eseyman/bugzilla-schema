use utf8;
package Schema::Bugzilla::4_5_6::Result::UserApiKey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_6::Result::UserApiKey

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

=head1 TABLE: C<user_api_keys>

=cut

__PACKAGE__->table("user_api_keys");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 api_key

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 revoked

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 last_used

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "api_key",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "revoked",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "last_used",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user_api_keys_api_key_idx>

=over 4

=item * L</api_key>

=back

=cut

__PACKAGE__->add_unique_constraint("user_api_keys_api_key_idx", ["api_key"]);

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_6::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::4_5_6::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:37:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+gOWochaDJtiMzbmSLxxMw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
