use utf8;
package Schema::Bugzilla::5_0rc1::Result::BugsAlias;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::BugsAlias

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

=head1 TABLE: C<bugs_aliases>

=cut

__PACKAGE__->table("bugs_aliases");

=head1 ACCESSORS

=head2 alias

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alias",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bugs_aliases_alias_idx>

=over 4

=item * L</alias>

=back

=cut

__PACKAGE__->add_unique_constraint("bugs_aliases_alias_idx", ["alias"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::5_0rc1::Result::Bug",
  { bug_id => "bug_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:41:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9XkqQ/qqDRpR6/b/HD+Dzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
