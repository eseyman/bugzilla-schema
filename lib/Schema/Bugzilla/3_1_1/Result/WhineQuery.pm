use utf8;
package Schema::Bugzilla::3_1_1::Result::WhineQuery;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_1::Result::WhineQuery

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

=head1 TABLE: C<whine_queries>

=cut

__PACKAGE__->table("whine_queries");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 eventid

  data_type: 'mediumint'
  is_nullable: 0

=head2 query_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 onemailperbug

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "eventid",
  { data_type => "mediumint", is_nullable => 0 },
  "query_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "onemailperbug",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:10:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8QYzggRAvgmwpnXLg2/HYA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
