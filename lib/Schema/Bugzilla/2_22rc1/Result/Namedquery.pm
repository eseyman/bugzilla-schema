use utf8;
package Schema::Bugzilla::2_22rc1::Result::Namedquery;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_22rc1::Result::Namedquery

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

=head2 userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 linkinfooter

  data_type: 'tinyint'
  is_nullable: 0

=head2 query

  data_type: 'mediumtext'
  is_nullable: 0

=head2 query_type

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "linkinfooter",
  { data_type => "tinyint", is_nullable => 0 },
  "query",
  { data_type => "mediumtext", is_nullable => 0 },
  "query_type",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<namedqueries_userid_idx>

=over 4

=item * L</userid>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("namedqueries_userid_idx", ["userid", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 14:58:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dSQOSspLwIYK7in8rdx0xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
