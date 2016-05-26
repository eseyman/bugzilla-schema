use utf8;
package Schema::Bugzilla::4_0rc1::Result::StatusWorkflow;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0rc1::Result::StatusWorkflow

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
  is_foreign_key: 1
  is_nullable: 1

=head2 new_status

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 require_comment

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "old_status",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 1 },
  "new_status",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
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

=head1 RELATIONS

=head2 new_status

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::BugStatus>

=cut

__PACKAGE__->belongs_to(
  "new_status",
  "Schema::Bugzilla::4_0rc1::Result::BugStatus",
  { id => "new_status" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 old_status

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::BugStatus>

=cut

__PACKAGE__->belongs_to(
  "old_status",
  "Schema::Bugzilla::4_0rc1::Result::BugStatus",
  { id => "old_status" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:34:50
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HH57htJGtIDly0qE0C1Glw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
