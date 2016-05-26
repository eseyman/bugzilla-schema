use utf8;
package Schema::Bugzilla::4_0rc1::Result::namedqueries_link_in_footer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0rc1::Result::namedqueries_link_in_footer

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

=head1 TABLE: C<namedqueries_link_in_footer>

=cut

__PACKAGE__->table("namedqueries_link_in_footer");

=head1 ACCESSORS

=head2 namedquery_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "namedquery_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<namedqueries_link_in_footer_id_idx>

=over 4

=item * L</namedquery_id>

=item * L</user_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "namedqueries_link_in_footer_id_idx",
  ["namedquery_id", "user_id"],
);

=head1 RELATIONS

=head2 namedquery

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::namedqueries>

=cut

__PACKAGE__->belongs_to(
  "namedquery",
  "Schema::Bugzilla::4_0rc1::Result::namedqueries",
  { id => "namedquery_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0rc1::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::4_0rc1::Result::profiles",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:29:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:imY85dZSihEpgFNZKxZXLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
