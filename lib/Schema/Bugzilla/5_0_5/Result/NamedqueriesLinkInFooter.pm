use utf8;
package Schema::Bugzilla::5_0_5::Result::NamedqueriesLinkInFooter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_5::Result::NamedqueriesLinkInFooter

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

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

Related object: L<Schema::Bugzilla::5_0_5::Result::Namedquery>

=cut

__PACKAGE__->belongs_to(
  "namedquery",
  "Schema::Bugzilla::5_0_5::Result::Namedquery",
  { id => "namedquery_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_5::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::5_0_5::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:45:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rOtSZrJZDShXWe+NExxOEA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
