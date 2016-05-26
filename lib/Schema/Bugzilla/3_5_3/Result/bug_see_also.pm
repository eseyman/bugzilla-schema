use utf8;
package Schema::Bugzilla::3_5_3::Result::bug_see_also;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_5_3::Result::bug_see_also

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

=head1 TABLE: C<bug_see_also>

=cut

__PACKAGE__->table("bug_see_also");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_see_also_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_see_also_bug_id_idx", ["bug_id", "value"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 10:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Df25HgzX4aw+HIPfy4QELg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
