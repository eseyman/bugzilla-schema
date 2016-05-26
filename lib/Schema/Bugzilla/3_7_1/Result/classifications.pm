use utf8;
package Schema::Bugzilla::3_7_1::Result::classifications;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_7_1::Result::classifications

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

=head1 TABLE: C<classifications>

=cut

__PACKAGE__->table("classifications");

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

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
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

=head2 C<classifications_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("classifications_name_idx", ["name"]);

=head1 RELATIONS

=head2 products

Type: has_many

Related object: L<Schema::Bugzilla::3_7_1::Result::products>

=cut

__PACKAGE__->has_many(
  "products",
  "Schema::Bugzilla::3_7_1::Result::products",
  { "foreign.classification_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-04 20:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bYV0IzthwWZ+3E4iNmXUwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
