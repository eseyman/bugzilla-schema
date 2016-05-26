use utf8;
package Schema::Bugzilla::3_1_3::Result::namedqueries;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_3::Result::namedqueries

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
  is_foreign_key: 1
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
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "query",
  { data_type => "mediumtext", is_nullable => 0 },
  "query_type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
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

=head1 RELATIONS

=head2 namedqueries_links_in_footer

Type: has_many

Related object: L<Schema::Bugzilla::3_1_3::Result::namedqueries_link_in_footer>

=cut

__PACKAGE__->has_many(
  "namedqueries_links_in_footer",
  "Schema::Bugzilla::3_1_3::Result::namedqueries_link_in_footer",
  { "foreign.namedquery_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::3_1_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::3_1_3::Result::profiles",
  { userid => "userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 22:47:59
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jlnzkjFHr9ssMqULNGQFzg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
