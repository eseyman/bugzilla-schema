use utf8;
package Schema::Bugzilla::2_18_1::Result::user_group_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_18_1::Result::user_group_map

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

=head1 TABLE: C<user_group_map>

=cut

__PACKAGE__->table("user_group_map");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 isbless

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 grant_type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_nullable => 0 },
  "isbless",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "grant_type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<user_id>

=over 4

=item * L</user_id>

=item * L</group_id>

=item * L</grant_type>

=item * L</isbless>

=back

=cut

__PACKAGE__->add_unique_constraint("user_id", ["user_id", "group_id", "grant_type", "isbless"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:03:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wGNsKdNeEUOYk8xYe3oekA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
