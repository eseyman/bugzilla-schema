use utf8;
package Schema::Bugzilla::4_0::Result::tokens;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0::Result::tokens

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
  is_foreign_key: 1
  is_nullable: 1

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
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
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

=head1 RELATIONS

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::4_0::Result::profiles",
  { userid => "userid" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:30:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zzFdBwn5kcFwgFKXK1kGcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
