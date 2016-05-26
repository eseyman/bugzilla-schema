use utf8;
package Schema::Bugzilla::3_3_2::Result::Keyword;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_2::Result::Keyword

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
  is_nullable: 0

=head2 keywordid

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "keywordid",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<keywords_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</keywordid>

=back

=cut

__PACKAGE__->add_unique_constraint("keywords_bug_id_idx", ["bug_id", "keywordid"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 12:41:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/Hp51a6kj1aiyzsywqobyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
