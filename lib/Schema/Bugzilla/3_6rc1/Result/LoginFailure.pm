use utf8;
package Schema::Bugzilla::3_6rc1::Result::LoginFailure;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_6rc1::Result::LoginFailure

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

=head1 TABLE: C<login_failure>

=cut

__PACKAGE__->table("login_failure");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 login_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 ip_addr

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_nullable => 0 },
  "login_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "ip_addr",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 21:49:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YTHNrVoa90XQF1ZDkp+Mxg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
