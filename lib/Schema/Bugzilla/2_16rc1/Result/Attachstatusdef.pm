use utf8;
package Schema::Bugzilla::2_16rc1::Result::Attachstatusdef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_16rc1::Result::Attachstatusdef

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

=head1 TABLE: C<attachstatusdefs>

=cut

__PACKAGE__->table("attachstatusdefs");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 description

  data_type: 'mediumtext'
  is_nullable: 1

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 product

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "product",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:43:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:krKpQOmJ9pakARPVjG9rRA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
