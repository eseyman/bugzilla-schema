use utf8;
package Schema::Bugzilla::3_5_3::Result::namedquery_group_map;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_5_3::Result::namedquery_group_map

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

=head1 TABLE: C<namedquery_group_map>

=cut

__PACKAGE__->table("namedquery_group_map");

=head1 ACCESSORS

=head2 namedquery_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "namedquery_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<namedquery_group_map_namedquery_id_idx>

=over 4

=item * L</namedquery_id>

=back

=cut

__PACKAGE__->add_unique_constraint("namedquery_group_map_namedquery_id_idx", ["namedquery_id"]);

=head1 RELATIONS

=head2 group

Type: belongs_to

Related object: L<Schema::Bugzilla::3_5_3::Result::groups>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Bugzilla::3_5_3::Result::groups",
  { id => "group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 namedquery

Type: belongs_to

Related object: L<Schema::Bugzilla::3_5_3::Result::namedqueries>

=cut

__PACKAGE__->belongs_to(
  "namedquery",
  "Schema::Bugzilla::3_5_3::Result::namedqueries",
  { id => "namedquery_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 10:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/1lrKfqQ3aDHouUsNMvmSA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
