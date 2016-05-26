use utf8;
package Schema::Bugzilla::5_1_1::Result::Token;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_1::Result::Token

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

=head1 TABLE: C<tokens>

=cut

__PACKAGE__->table("tokens");

=head1 ACCESSORS

=head2 userid

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 issuedate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 token

  data_type: 'varchar'
  is_nullable: 0
  size: 22

=head2 tokentype

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 eventdata

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "issuedate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "token",
  { data_type => "varchar", is_nullable => 0, size => 22 },
  "tokentype",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "eventdata",
  { data_type => "tinytext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</token>

=back

=cut

__PACKAGE__->set_primary_key("token");

=head1 RELATIONS

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::5_1_1::Result::Profile",
  { userid => "userid" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-05-26 22:19:12
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i6pZmuVGFooVLLWoyPSK1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
