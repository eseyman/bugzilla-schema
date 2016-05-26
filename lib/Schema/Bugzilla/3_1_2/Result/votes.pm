use utf8;
package Schema::Bugzilla::3_1_2::Result::votes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_2::Result::votes

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

=head1 TABLE: C<votes>

=cut

__PACKAGE__->table("votes");

=head1 ACCESSORS

=head2 who

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 vote_count

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "who",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "vote_count",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 RELATIONS

=head2 who

Type: belongs_to

Related object: L<Schema::Bugzilla::3_1_2::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "who",
  "Schema::Bugzilla::3_1_2::Result::profiles",
  { userid => "who" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 22:46:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v974AeRPkDXwJ3p3wp9b7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
