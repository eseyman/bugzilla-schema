use utf8;
package Schema::Bugzilla::4_0::Result::flagtypes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_0::Result::flagtypes

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

=head1 TABLE: C<flagtypes>

=cut

__PACKAGE__->table("flagtypes");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 cc_list

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 target_type

  data_type: 'char'
  default_value: 'b'
  is_nullable: 0
  size: 1

=head2 is_active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 is_requestable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_requesteeble

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_multiplicable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 grant_group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 request_group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "cc_list",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "target_type",
  { data_type => "char", default_value => "b", is_nullable => 0, size => 1 },
  "is_active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "is_requestable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_requesteeble",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_multiplicable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "grant_group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "request_group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 flagexclusions

Type: has_many

Related object: L<Schema::Bugzilla::4_0::Result::flagexclusions>

=cut

__PACKAGE__->has_many(
  "flagexclusions",
  "Schema::Bugzilla::4_0::Result::flagexclusions",
  { "foreign.type_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flaginclusions

Type: has_many

Related object: L<Schema::Bugzilla::4_0::Result::flaginclusions>

=cut

__PACKAGE__->has_many(
  "flaginclusions",
  "Schema::Bugzilla::4_0::Result::flaginclusions",
  { "foreign.type_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags

Type: has_many

Related object: L<Schema::Bugzilla::4_0::Result::flags>

=cut

__PACKAGE__->has_many(
  "flags",
  "Schema::Bugzilla::4_0::Result::flags",
  { "foreign.type_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 grant_group

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0::Result::groups>

=cut

__PACKAGE__->belongs_to(
  "grant_group",
  "Schema::Bugzilla::4_0::Result::groups",
  { id => "grant_group_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "CASCADE",
  },
);

=head2 request_group

Type: belongs_to

Related object: L<Schema::Bugzilla::4_0::Result::groups>

=cut

__PACKAGE__->belongs_to(
  "request_group",
  "Schema::Bugzilla::4_0::Result::groups",
  { id => "request_group_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:30:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gDm9PTc6YWmU39JFBNmr5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
