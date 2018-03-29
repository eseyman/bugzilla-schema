use utf8;
package Schema::Bugzilla::5_1_2::Result::AuditLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_2::Result::AuditLog

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<audit_log>

=cut

__PACKAGE__->table("audit_log");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 class

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 object_id

  data_type: 'integer'
  is_nullable: 0

=head2 field

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 removed

  data_type: 'mediumtext'
  is_nullable: 1

=head2 added

  data_type: 'mediumtext'
  is_nullable: 1

=head2 at_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "class",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "object_id",
  { data_type => "integer", is_nullable => 0 },
  "field",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "removed",
  { data_type => "mediumtext", is_nullable => 1 },
  "added",
  { data_type => "mediumtext", is_nullable => 1 },
  "at_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_2::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::5_1_2::Result::Profile",
  { userid => "user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-03-29 21:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D4akzf1sRsIHLCvLqTa5XQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
