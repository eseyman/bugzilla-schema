use utf8;
package Schema::Bugzilla::3_3_1::Result::Logincooky;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_1::Result::Logincooky

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

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 ipaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 lastused

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cookie",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "userid",
  { data_type => "mediumint", is_nullable => 0 },
  "ipaddr",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "lastused",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</cookie>

=back

=cut

__PACKAGE__->set_primary_key("cookie");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 12:37:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AZx3IYAtoLtjhuy5zaTQ1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
