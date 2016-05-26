use utf8;
package Schema::Bugzilla::2_23_4::Result::namedqueries;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_4::Result::namedqueries

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

=head1 TABLE: C<namedqueries>

=cut

__PACKAGE__->table("namedqueries");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 query

  data_type: 'mediumtext'
  is_nullable: 0

=head2 query_type

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "mediumint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "query",
  { data_type => "mediumtext", is_nullable => 0 },
  "query_type",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<namedqueries_userid_idx>

=over 4

=item * L</userid>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("namedqueries_userid_idx", ["userid", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:54:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4ZIprOVhjSMS0bzNn2GX0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
