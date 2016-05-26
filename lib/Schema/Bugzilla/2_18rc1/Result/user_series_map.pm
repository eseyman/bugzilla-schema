use utf8;
package Schema::Bugzilla::2_18rc1::Result::user_series_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_18rc1::Result::user_series_map

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

=head1 TABLE: C<user_series_map>

=cut

__PACKAGE__->table("user_series_map");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 series_id

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_nullable => 0 },
  "series_id",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<user_id>

=over 4

=item * L</user_id>

=item * L</series_id>

=back

=cut

__PACKAGE__->add_unique_constraint("user_id", ["user_id", "series_id"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 09:57:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yxJ0FZkiRuQi1nN1Tf/z1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
