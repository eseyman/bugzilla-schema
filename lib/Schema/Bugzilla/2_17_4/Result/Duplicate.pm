use utf8;
package Schema::Bugzilla::2_17_4::Result::Duplicate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_4::Result::Duplicate

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

=head1 TABLE: C<duplicates>

=cut

__PACKAGE__->table("duplicates");

=head1 ACCESSORS

=head2 dupe_of

  data_type: 'mediumint'
  is_nullable: 0

=head2 dupe

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "dupe_of",
  { data_type => "mediumint", is_nullable => 0 },
  "dupe",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</dupe>

=back

=cut

__PACKAGE__->set_primary_key("dupe");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KluHIzhQZX3VwaMlCax23w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
