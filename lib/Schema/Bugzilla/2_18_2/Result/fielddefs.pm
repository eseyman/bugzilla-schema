use utf8;
package Schema::Bugzilla::2_18_2::Result::fielddefs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_18_2::Result::fielddefs

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

=head1 TABLE: C<fielddefs>

=cut

__PACKAGE__->table("fielddefs");

=head1 ACCESSORS

=head2 fieldid

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 mailhead

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sortkey

  data_type: 'smallint'
  is_nullable: 0

=head2 obsolete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "fieldid",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "mailhead",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sortkey",
  { data_type => "smallint", is_nullable => 0 },
  "obsolete",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</fieldid>

=back

=cut

__PACKAGE__->set_primary_key("fieldid");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 10:03:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SUiCK8m7tvdH3irftMkJAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
