use utf8;
package Schema::Bugzilla::4_0rc1::Result::profile_search;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0rc1::Result::profile_search

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
  { data_type => "mediumint", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:29:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j9do9vKTiWJCceS5VUEySw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
