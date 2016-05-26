use utf8;
package Schema::Bugzilla::2_23_4::Result::NamedqueryGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_4::Result::NamedqueryGroupMap

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
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "namedquery_id",
  { data_type => "mediumint", is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<namedquery_group_map_namedquery_id_idx>

=over 4

=item * L</namedquery_id>

=back

=cut

__PACKAGE__->add_unique_constraint("namedquery_group_map_namedquery_id_idx", ["namedquery_id"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 23:28:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y9/6n3sbsM8G6nNFd5Za4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
