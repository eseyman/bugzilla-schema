use utf8;
package Schema::Bugzilla::3_7_1::Result::Milestone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_7_1::Result::Milestone

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

=head1 TABLE: C<milestones>

=cut

__PACKAGE__->table("milestones");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<milestones_product_id_idx>

=over 4

=item * L</product_id>

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("milestones_product_id_idx", ["product_id", "value"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 21:42:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s6942dOUBhqcmm9Wy3ruhQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
