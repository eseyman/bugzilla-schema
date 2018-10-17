use utf8;
package Schema::Act::10::Result::Bio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Bio

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

=head1 TABLE: C<bios>

=cut

__PACKAGE__->table("bios");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_nullable: 1

=head2 lang

  data_type: 'text'
  is_nullable: 1

=head2 bio

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_nullable => 1 },
  "lang",
  { data_type => "text", is_nullable => 1 },
  "bio",
  { data_type => "text", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bios_idx>

=over 4

=item * L</user_id>

=item * L</lang>

=back

=cut

__PACKAGE__->add_unique_constraint("bios_idx", ["user_id", "lang"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5sELyY75i4MLP0TYi5qFvA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
