use utf8;
package Schema::Act::10::Result::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Schema

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

=head1 TABLE: C<schema>

=cut

__PACKAGE__->table("schema");

=head1 ACCESSORS

=head2 current_version

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "current_version",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZGSGbjWmjhD+fBD3JMtYLg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
