use utf8;
package Schema::Bugzilla::3_5_3::Result::EmailSetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_5_3::Result::EmailSetting

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
  { data_type => "mediumint", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 23:36:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NRdCNvtZmPV3AzoZP/rjPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
