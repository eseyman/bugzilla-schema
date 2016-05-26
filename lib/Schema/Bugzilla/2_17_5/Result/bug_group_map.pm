use utf8;
package Schema::Bugzilla::2_17_5::Result::bug_group_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_5::Result::bug_group_map

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

=head1 TABLE: C<bug_group_map>

=cut

__PACKAGE__->table("bug_group_map");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_id>

=over 4

=item * L</bug_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_id", ["bug_id", "group_id"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:13:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CwKNqPDjbc1Pgowknn/GKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
