use utf8;
package Schema::Bugzilla::3_1_3::Result::Flag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_3::Result::Flag

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
  is_nullable: 0

=head2 status

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 attach_id

  data_type: 'mediumint'
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
  is_nullable: 1

=head2 requestee_id

  data_type: 'mediumint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "type_id",
  { data_type => "smallint", is_nullable => 0 },
  "status",
  { data_type => "char", is_nullable => 0, size => 1 },
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "attach_id",
  { data_type => "mediumint", is_nullable => 1 },
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
  { data_type => "mediumint", is_nullable => 1 },
  "requestee_id",
  { data_type => "mediumint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:17:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SIQAH9J6v9oXQg/ZWQDLpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
