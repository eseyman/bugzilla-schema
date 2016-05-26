use utf8;
package Schema::Bugzilla::2_16rc1::Result::attachstatuses;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_16rc1::Result::attachstatuses

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

=head1 TABLE: C<attachstatuses>

=cut

__PACKAGE__->table("attachstatuses");

=head1 ACCESSORS

=head2 attach_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 statusid

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "attach_id",
  { data_type => "mediumint", is_nullable => 0 },
  "statusid",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</attach_id>

=item * L</statusid>

=back

=cut

__PACKAGE__->set_primary_key("attach_id", "statusid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:25:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T+gTTtpI5sJRHwIS3PTZPA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
