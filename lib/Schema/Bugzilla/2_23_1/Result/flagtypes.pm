use utf8;
package Schema::Bugzilla::2_23_1::Result::flagtypes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_1::Result::flagtypes

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

=head1 TABLE: C<flagtypes>

=cut

__PACKAGE__->table("flagtypes");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 cc_list

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 target_type

  data_type: 'char'
  default_value: 'b'
  is_nullable: 0
  size: 1

=head2 is_active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 is_requestable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_requesteeble

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_multiplicable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 grant_group_id

  data_type: 'mediumint'
  is_nullable: 1

=head2 request_group_id

  data_type: 'mediumint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "cc_list",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "target_type",
  { data_type => "char", default_value => "b", is_nullable => 0, size => 1 },
  "is_active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "is_requestable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_requesteeble",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_multiplicable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "grant_group_id",
  { data_type => "mediumint", is_nullable => 1 },
  "request_group_id",
  { data_type => "mediumint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:50:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a8aogMONqs9fg5h0qBqz+g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
