use utf8;
package Schema::Bugzilla::5_1_2::Result::BugTag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_2::Result::BugTag

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

=head1 TABLE: C<bug_tag>

=cut

__PACKAGE__->table("bug_tag");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 tag_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "tag_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_tag_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</tag_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_tag_bug_id_idx", ["bug_id", "tag_id"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_2::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::5_1_2::Result::Bug",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 tag

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_2::Result::Tag>

=cut

__PACKAGE__->belongs_to(
  "tag",
  "Schema::Bugzilla::5_1_2::Result::Tag",
  { id => "tag_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-03-29 21:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lIm033hvNTn/RA6j3QYruw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
