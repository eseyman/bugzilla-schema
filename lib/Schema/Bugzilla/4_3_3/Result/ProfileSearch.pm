use utf8;
package Schema::Bugzilla::4_3_3::Result::ProfileSearch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_3::Result::ProfileSearch

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

=head1 TABLE: C<profile_search>

=cut

__PACKAGE__->table("profile_search");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_list

  data_type: 'mediumtext'
  is_nullable: 0

=head2 list_order

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_list",
  { data_type => "mediumtext", is_nullable => 0 },
  "list_order",
  { data_type => "mediumtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::4_3_3::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:50:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mzQuOwV7lJpn/aW+up6Qew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
