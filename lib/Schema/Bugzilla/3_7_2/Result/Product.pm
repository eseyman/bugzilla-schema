use utf8;
package Schema::Bugzilla::3_7_2::Result::Product;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_7_2::Result::Product

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

=head1 TABLE: C<products>

=cut

__PACKAGE__->table("products");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 classification_id

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 defaultmilestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 20

=head2 allows_unconfirmed

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "classification_id",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "isactive",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "defaultmilestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 20,
  },
  "allows_unconfirmed",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<products_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("products_name_idx", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 21:45:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tJgJu0CRqyA+ycIHUoZx9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
