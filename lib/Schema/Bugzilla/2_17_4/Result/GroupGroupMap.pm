use utf8;
package Schema::Bugzilla::2_17_4::Result::GroupGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_4::Result::GroupGroupMap

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

=head1 TABLE: C<group_group_map>

=cut

__PACKAGE__->table("group_group_map");

=head1 ACCESSORS

=head2 member_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 grantor_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 isbless

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "member_id",
  { data_type => "mediumint", is_nullable => 0 },
  "grantor_id",
  { data_type => "mediumint", is_nullable => 0 },
  "isbless",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<member_id>

=over 4

=item * L</member_id>

=item * L</grantor_id>

=item * L</isbless>

=back

=cut

__PACKAGE__->add_unique_constraint("member_id", ["member_id", "grantor_id", "isbless"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tn7V+rlPzl5/dMjy1xY4xg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
