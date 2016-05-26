use utf8;
package Schema::Bugzilla::2_17_3::Result::Attachment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_3::Result::Attachment

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
  is_nullable: 0

=head2 creation_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 description

  data_type: 'mediumtext'
  is_nullable: 0

=head2 mimetype

  data_type: 'mediumtext'
  is_nullable: 0

=head2 ispatch

  data_type: 'tinyint'
  is_nullable: 1

=head2 filename

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 thedata

  data_type: 'longblob'
  is_nullable: 0

=head2 submitter_id

  data_type: 'mediumint'
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
  { data_type => "mediumint", is_nullable => 0 },
  "creation_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "description",
  { data_type => "mediumtext", is_nullable => 0 },
  "mimetype",
  { data_type => "mediumtext", is_nullable => 0 },
  "ispatch",
  { data_type => "tinyint", is_nullable => 1 },
  "filename",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "thedata",
  { data_type => "longblob", is_nullable => 0 },
  "submitter_id",
  { data_type => "mediumint", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WHxYaplqnJEC0oB69fQ5+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
