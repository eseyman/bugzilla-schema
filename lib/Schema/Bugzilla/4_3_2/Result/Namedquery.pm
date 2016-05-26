use utf8;
package Schema::Bugzilla::4_3_2::Result::Namedquery;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_2::Result::Namedquery

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

Related object: L<Schema::Bugzilla::4_3_2::Result::NamedqueriesLinkInFooter>

=cut

__PACKAGE__->has_many(
  "namedqueries_links_in_footer",
  "Schema::Bugzilla::4_3_2::Result::NamedqueriesLinkInFooter",
  { "foreign.namedquery_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedquery_group_map

Type: might_have

Related object: L<Schema::Bugzilla::4_3_2::Result::NamedqueryGroupMap>

=cut

__PACKAGE__->might_have(
  "namedquery_group_map",
  "Schema::Bugzilla::4_3_2::Result::NamedqueryGroupMap",
  { "foreign.namedquery_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_2::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::4_3_2::Result::Profile",
  { userid => "userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:49:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QH45oWlAaAqqlLNK/E3wpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
