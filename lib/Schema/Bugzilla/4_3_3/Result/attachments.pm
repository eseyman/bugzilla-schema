use utf8;
package Schema::Bugzilla::4_3_3::Result::attachments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_3::Result::attachments

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

=head1 TABLE: C<attachments>

=cut

__PACKAGE__->table("attachments");

=head1 ACCESSORS

=head2 attach_id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 creation_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 modification_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 description

  data_type: 'tinytext'
  is_nullable: 0

=head2 mimetype

  data_type: 'tinytext'
  is_nullable: 0

=head2 ispatch

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 filename

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 submitter_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 isobsolete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 isprivate

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "attach_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "creation_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "modification_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "description",
  { data_type => "tinytext", is_nullable => 0 },
  "mimetype",
  { data_type => "tinytext", is_nullable => 0 },
  "ispatch",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "filename",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "submitter_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "isobsolete",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "isprivate",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</attach_id>

=back

=cut

__PACKAGE__->set_primary_key("attach_id");

=head1 RELATIONS

=head2 attach_data

Type: might_have

Related object: L<Schema::Bugzilla::4_3_3::Result::attach_data>

=cut

__PACKAGE__->might_have(
  "attach_data",
  "Schema::Bugzilla::4_3_3::Result::attach_data",
  { "foreign.id" => "self.attach_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::4_3_3::Result::bugs",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_3_3::Result::bugs_activity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::4_3_3::Result::bugs_activity",
  { "foreign.attach_id" => "self.attach_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags

Type: has_many

Related object: L<Schema::Bugzilla::4_3_3::Result::flags>

=cut

__PACKAGE__->has_many(
  "flags",
  "Schema::Bugzilla::4_3_3::Result::flags",
  { "foreign.attach_id" => "self.attach_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 submitter

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "submitter",
  "Schema::Bugzilla::4_3_3::Result::profiles",
  { userid => "submitter_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:14:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PA3QmZ1cnZFmV0U/LaHutA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
