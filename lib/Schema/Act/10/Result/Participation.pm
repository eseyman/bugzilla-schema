use utf8;
package Schema::Act::10::Result::Participation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Participation

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

=head1 TABLE: C<participations>

=cut

__PACKAGE__->table("participations");

=head1 ACCESSORS

=head2 conf_id

  data_type: 'text'
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tshirt_size

  data_type: 'text'
  is_nullable: 1

=head2 nb_family

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 datetime

  data_type: 'timestamp'
  is_nullable: 1

=head2 ip

  data_type: 'text'
  is_nullable: 1

=head2 attended

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "conf_id",
  { data_type => "text", is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tshirt_size",
  { data_type => "text", is_nullable => 1 },
  "nb_family",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "datetime",
  { data_type => "timestamp", is_nullable => 1 },
  "ip",
  { data_type => "text", is_nullable => 1 },
  "attended",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
);

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<Schema::Act::10::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Act::10::Result::User",
  { user_id => "user_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wogWRI/DeafZT21fR6rRpg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
