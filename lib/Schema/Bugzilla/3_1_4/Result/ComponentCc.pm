use utf8;
package Schema::Bugzilla::3_1_4::Result::ComponentCc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_4::Result::ComponentCc

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

=head1 TABLE: C<component_cc>

=cut

__PACKAGE__->table("component_cc");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 component_id

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_nullable => 0 },
  "component_id",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<component_cc_user_id_idx>

=over 4

=item * L</component_id>

=item * L</user_id>

=back

=cut

__PACKAGE__->add_unique_constraint("component_cc_user_id_idx", ["component_id", "user_id"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wxkxwXCYUlGpWEgQlXcXGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
