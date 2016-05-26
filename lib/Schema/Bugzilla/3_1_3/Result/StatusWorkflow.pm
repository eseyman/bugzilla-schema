use utf8;
package Schema::Bugzilla::3_1_3::Result::StatusWorkflow;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_3::Result::StatusWorkflow

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

=head1 TABLE: C<status_workflow>

=cut

__PACKAGE__->table("status_workflow");

=head1 ACCESSORS

=head2 old_status

  data_type: 'smallint'
  is_nullable: 1

=head2 new_status

  data_type: 'smallint'
  is_nullable: 0

=head2 require_comment

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "old_status",
  { data_type => "smallint", is_nullable => 1 },
  "new_status",
  { data_type => "smallint", is_nullable => 0 },
  "require_comment",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<status_workflow_idx>

=over 4

=item * L</old_status>

=item * L</new_status>

=back

=cut

__PACKAGE__->add_unique_constraint("status_workflow_idx", ["old_status", "new_status"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Tidk/+Z8fl+JMm9/+kUaSQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
