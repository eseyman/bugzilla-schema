use utf8;
package Schema::Bugzilla::4_4rc2::Result::keywords;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::keywords

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

=head1 TABLE: C<keywords>

=cut

__PACKAGE__->table("keywords");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 keywordid

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "keywordid",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<keywords_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</keywordid>

=back

=cut

__PACKAGE__->add_unique_constraint("keywords_bug_id_idx", ["bug_id", "keywordid"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::4_4rc2::Result::bugs",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 keywordid

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::keyworddefs>

=cut

__PACKAGE__->belongs_to(
  "keywordid",
  "Schema::Bugzilla::4_4rc2::Result::keyworddefs",
  { id => "keywordid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:11:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xO9xAOUDtIXweaf43ZEU6w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
