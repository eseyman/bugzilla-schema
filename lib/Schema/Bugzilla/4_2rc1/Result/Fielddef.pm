use utf8;
package Schema::Bugzilla::4_2rc1::Result::Fielddef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_2rc1::Result::Fielddef

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
  is_foreign_key: 1
  is_nullable: 1

=head2 value_field_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 reverse_desc

  data_type: 'tinytext'
  is_nullable: 1

=head2 is_mandatory

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_numeric

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
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "value_field_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "reverse_desc",
  { data_type => "tinytext", is_nullable => 1 },
  "is_mandatory",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_numeric",
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

=head1 RELATIONS

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_2rc1::Result::BugsActivity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::4_2rc1::Result::BugsActivity",
  { "foreign.fieldid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 field_visibilities

Type: has_many

Related object: L<Schema::Bugzilla::4_2rc1::Result::FieldVisibility>

=cut

__PACKAGE__->has_many(
  "field_visibilities",
  "Schema::Bugzilla::4_2rc1::Result::FieldVisibility",
  { "foreign.field_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fielddefs_value_fields

Type: has_many

Related object: L<Schema::Bugzilla::4_2rc1::Result::Fielddef>

=cut

__PACKAGE__->has_many(
  "fielddefs_value_fields",
  "Schema::Bugzilla::4_2rc1::Result::Fielddef",
  { "foreign.value_field_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fielddefs_visibility_fields

Type: has_many

Related object: L<Schema::Bugzilla::4_2rc1::Result::Fielddef>

=cut

__PACKAGE__->has_many(
  "fielddefs_visibility_fields",
  "Schema::Bugzilla::4_2rc1::Result::Fielddef",
  { "foreign.visibility_field_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profiles_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_2rc1::Result::ProfilesActivity>

=cut

__PACKAGE__->has_many(
  "profiles_activities",
  "Schema::Bugzilla::4_2rc1::Result::ProfilesActivity",
  { "foreign.fieldid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 value_field

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc1::Result::Fielddef>

=cut

__PACKAGE__->belongs_to(
  "value_field",
  "Schema::Bugzilla::4_2rc1::Result::Fielddef",
  { id => "value_field_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "CASCADE",
  },
);

=head2 visibility_field

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc1::Result::Fielddef>

=cut

__PACKAGE__->belongs_to(
  "visibility_field",
  "Schema::Bugzilla::4_2rc1::Result::Fielddef",
  { id => "visibility_field_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:41:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+bAnAsAKNZy62SwlBNprLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
