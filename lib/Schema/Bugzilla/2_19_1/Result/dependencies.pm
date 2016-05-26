use utf8;
package Schema::Bugzilla::2_19_1::Result::dependencies;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_19_1::Result::dependencies

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

=head1 TABLE: C<dependencies>

=cut

__PACKAGE__->table("dependencies");

=head1 ACCESSORS

=head2 blocked

  data_type: 'mediumint'
  is_nullable: 0

=head2 dependson

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "blocked",
  { data_type => "mediumint", is_nullable => 0 },
  "dependson",
  { data_type => "mediumint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:39:57
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zDA+Q7VTk2o79v9H6YIa/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
