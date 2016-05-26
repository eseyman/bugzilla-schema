use utf8;
package Schema::Bugzilla::3_3_4::Result::Vote;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_4::Result::Vote

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
  { data_type => "mediumint", is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "vote_count",
  { data_type => "smallint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 12:44:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:I6HnUs5iRL6wdsDPmNbSEA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
