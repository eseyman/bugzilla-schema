use utf8;
package Schema::Act::10::Result::Tag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Tag

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

=head1 TABLE: C<tags>

=cut

__PACKAGE__->table("tags");

=head1 ACCESSORS

=head2 tag_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'tags_tag_id_seq'

=head2 conf_id

  data_type: 'text'
  is_nullable: 0

=head2 tag

  data_type: 'text'
  is_nullable: 0

=head2 type

  data_type: 'text'
  is_nullable: 0

=head2 tagged_id

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "tag_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "tags_tag_id_seq",
  },
  "conf_id",
  { data_type => "text", is_nullable => 0 },
  "tag",
  { data_type => "text", is_nullable => 0 },
  "type",
  { data_type => "text", is_nullable => 0 },
  "tagged_id",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tag_id>

=back

=cut

__PACKAGE__->set_primary_key("tag_id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:niHQwp7LN6xDA1mjriFXTQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
