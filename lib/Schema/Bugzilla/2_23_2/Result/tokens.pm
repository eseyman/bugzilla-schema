use utf8;
package Schema::Bugzilla::2_23_2::Result::tokens;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_2::Result::tokens

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

=head1 TABLE: C<tokens>

=cut

__PACKAGE__->table("tokens");

=head1 ACCESSORS

=head2 userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 issuedate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 token

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 tokentype

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 eventdata

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_nullable => 0 },
  "issuedate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "token",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "tokentype",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "eventdata",
  { data_type => "tinytext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</token>

=back

=cut

__PACKAGE__->set_primary_key("token");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:53:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yvGXha4H9J+kkGRuxPuRzQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
