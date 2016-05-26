use utf8;
package Schema::Bugzilla::3_6rc1::Result::Fielddef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_6rc1::Result::Fielddef

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

=head1 TABLE: C<fielddefs>

=cut

__PACKAGE__->table("fielddefs");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 type

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 custom

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 description

  data_type: 'tinytext'
  is_nullable: 0

=head2 mailhead

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sortkey

  data_type: 'smallint'
  is_nullable: 0

=head2 obsolete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 enter_bug

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 buglist

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 visibility_field_id

  data_type: 'mediumint'
  is_nullable: 1

=head2 visibility_value_id

  data_type: 'smallint'
  is_nullable: 1

=head2 value_field_id

  data_type: 'mediumint'
  is_nullable: 1

=head2 reverse_desc

  data_type: 'tinytext'
  is_nullable: 1

=head2 is_mandatory

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "type",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "custom",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "description",
  { data_type => "tinytext", is_nullable => 0 },
  "mailhead",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sortkey",
  { data_type => "smallint", is_nullable => 0 },
  "obsolete",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "enter_bug",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "buglist",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "visibility_field_id",
  { data_type => "mediumint", is_nullable => 1 },
  "visibility_value_id",
  { data_type => "smallint", is_nullable => 1 },
  "value_field_id",
  { data_type => "mediumint", is_nullable => 1 },
  "reverse_desc",
  { data_type => "tinytext", is_nullable => 1 },
  "is_mandatory",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<fielddefs_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("fielddefs_name_idx", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-03 21:49:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gCiI2yh4zWFhOkDwXspPmw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
