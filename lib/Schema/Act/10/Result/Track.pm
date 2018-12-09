use utf8;
package Schema::Act::10::Result::Track;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Track

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

=head1 TABLE: C<tracks>

=cut

__PACKAGE__->table("tracks");

=head1 ACCESSORS

=head2 track_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'tracks_track_id_seq'

=head2 conf_id

  data_type: 'text'
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "track_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "tracks_track_id_seq",
  },
  "conf_id",
  { data_type => "text", is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</track_id>

=back

=cut

__PACKAGE__->set_primary_key("track_id");

=head1 RELATIONS

=head2 talks

Type: has_many

Related object: L<Schema::Act::10::Result::Talk>

=cut

__PACKAGE__->has_many(
  "talks",
  "Schema::Act::10::Result::Talk",
  { "foreign.track_id" => "self.track_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xy4HVOFip+NBNhnZxYcEOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
