use utf8;
package Schema::Bugzilla::3_1_4::Result::email_setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_4::Result::email_setting

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

=head1 TABLE: C<email_setting>

=cut

__PACKAGE__->table("email_setting");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 relationship

  data_type: 'tinyint'
  is_nullable: 0

=head2 event

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "relationship",
  { data_type => "tinyint", is_nullable => 0 },
  "event",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<email_setting_user_id_idx>

=over 4

=item * L</user_id>

=item * L</relationship>

=item * L</event>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "email_setting_user_id_idx",
  ["user_id", "relationship", "event"],
);

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::3_1_4::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::3_1_4::Result::profiles",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 22:49:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RoIpsw2B6wjOEmnh2eVwWA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
