use utf8;
package Schema::Bugzilla::2_18rc1::Result::Product;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_18rc1::Result::Product

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

=head2 description

  data_type: 'mediumtext'
  is_nullable: 1

=head2 milestoneurl

  data_type: 'tinytext'
  is_nullable: 0

=head2 disallownew

  data_type: 'tinyint'
  is_nullable: 0

=head2 votesperuser

  data_type: 'smallint'
  is_nullable: 0

=head2 maxvotesperbug

  data_type: 'smallint'
  default_value: 10000
  is_nullable: 0

=head2 votestoconfirm

  data_type: 'smallint'
  is_nullable: 0

=head2 defaultmilestone

  data_type: 'varchar'
  default_value: '---'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
  "milestoneurl",
  { data_type => "tinytext", is_nullable => 0 },
  "disallownew",
  { data_type => "tinyint", is_nullable => 0 },
  "votesperuser",
  { data_type => "smallint", is_nullable => 0 },
  "maxvotesperbug",
  { data_type => "smallint", default_value => 10000, is_nullable => 0 },
  "votestoconfirm",
  { data_type => "smallint", is_nullable => 0 },
  "defaultmilestone",
  {
    data_type => "varchar",
    default_value => "---",
    is_nullable => 0,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 15:54:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Kyzuw/WuZZQH13ELQLX1IQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
