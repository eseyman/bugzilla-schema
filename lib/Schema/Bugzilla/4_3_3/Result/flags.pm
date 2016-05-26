use utf8;
package Schema::Bugzilla::4_3_3::Result::flags;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_3_3::Result::flags

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

=head1 TABLE: C<flags>

=cut

__PACKAGE__->table("flags");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 status

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 attach_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 creation_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 modification_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 setter_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 requestee_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "type_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "status",
  { data_type => "char", is_nullable => 0, size => 1 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "attach_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "creation_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "modification_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "setter_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "requestee_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 attach

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::attachments>

=cut

__PACKAGE__->belongs_to(
  "attach",
  "Schema::Bugzilla::4_3_3::Result::attachments",
  { attach_id => "attach_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
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

=head2 requestee

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "requestee",
  "Schema::Bugzilla::4_3_3::Result::profiles",
  { userid => "requestee_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "CASCADE",
  },
);

=head2 setter

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "setter",
  "Schema::Bugzilla::4_3_3::Result::profiles",
  { userid => "setter_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 type

Type: belongs_to

Related object: L<Schema::Bugzilla::4_3_3::Result::flagtypes>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::Bugzilla::4_3_3::Result::flagtypes",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:14:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yhR6ZaKKYirs38Lms8LSgA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
