use utf8;
package Schema::Bugzilla::5_1_1::Result::BugsFulltext;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_1::Result::BugsFulltext

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

=head1 TABLE: C<bugs_fulltext>

=cut

__PACKAGE__->table("bugs_fulltext");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 short_desc

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 comments

  data_type: 'mediumtext'
  is_nullable: 1

=head2 comments_noprivate

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "short_desc",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "comments",
  { data_type => "mediumtext", is_nullable => 1 },
  "comments_noprivate",
  { data_type => "mediumtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</bug_id>

=back

=cut

__PACKAGE__->set_primary_key("bug_id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-05-26 22:19:12
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZPVG3ASVsEAbqFZVvaH+ug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
