use utf8;
package Schema::Bugzilla::2_17_4::Result::logincookies;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_4::Result::logincookies

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

=head1 TABLE: C<logincookies>

=cut

__PACKAGE__->table("logincookies");

=head1 ACCESSORS

=head2 cookie

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 ipaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 lastused

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cookie",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "mediumint", is_nullable => 0 },
  "ipaddr",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "lastused",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</cookie>

=back

=cut

__PACKAGE__->set_primary_key("cookie");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:39:32
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6JWbCwNVkOHHrJu56ME5zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
