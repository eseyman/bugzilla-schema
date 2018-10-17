use utf8;
package Schema::Act::10::Result::Twostep;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Twostep

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

=head1 TABLE: C<twostep>

=cut

__PACKAGE__->table("twostep");

=head1 ACCESSORS

=head2 token

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 email

  data_type: 'text'
  is_nullable: 0

=head2 datetime

  data_type: 'timestamp'
  is_nullable: 1

=head2 data

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "token",
  { data_type => "char", is_nullable => 0, size => 32 },
  "email",
  { data_type => "text", is_nullable => 0 },
  "datetime",
  { data_type => "timestamp", is_nullable => 1 },
  "data",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</token>

=back

=cut

__PACKAGE__->set_primary_key("token");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cRVq7n0hEWoOjuYcWMr0TQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
