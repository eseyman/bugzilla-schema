use utf8;
package Schema::Bugzilla::2_17_3::Result::Keyword;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_3::Result::Keyword

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

=head2 C<bug_id>

=over 4

=item * L</bug_id>

=item * L</keywordid>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_id", ["bug_id", "keywordid"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vug8ZEZEyjlzVGaMd/1gwg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
