use utf8;
package Schema::Bugzilla::4_5_2::Result::keyworddefs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_2::Result::keyworddefs

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

=head1 TABLE: C<keyworddefs>

=cut

__PACKAGE__->table("keyworddefs");

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
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<keyworddefs_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("keyworddefs_name_idx", ["name"]);

=head1 RELATIONS

=head2 keywords

Type: has_many

Related object: L<Schema::Bugzilla::4_5_2::Result::keywords>

=cut

__PACKAGE__->has_many(
  "keywords",
  "Schema::Bugzilla::4_5_2::Result::keywords",
  { "foreign.keywordid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:55:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9U2ORfGEVwnY85ihZb009w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
