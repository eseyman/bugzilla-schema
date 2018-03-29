use utf8;
package Schema::Bugzilla::5_1_2::Result::Dependency;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_2::Result::Dependency

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

=head1 TABLE: C<dependencies>

=cut

__PACKAGE__->table("dependencies");

=head1 ACCESSORS

=head2 blocked

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 dependson

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "blocked",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "dependson",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<dependencies_blocked_idx>

=over 4

=item * L</blocked>

=item * L</dependson>

=back

=cut

__PACKAGE__->add_unique_constraint("dependencies_blocked_idx", ["blocked", "dependson"]);

=head1 RELATIONS

=head2 blocked

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_2::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "blocked",
  "Schema::Bugzilla::5_1_2::Result::Bug",
  { bug_id => "blocked" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dependson

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_2::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "dependson",
  "Schema::Bugzilla::5_1_2::Result::Bug",
  { bug_id => "dependson" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-03-29 21:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oa6jaHP3L4wdojVxhhgcXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
