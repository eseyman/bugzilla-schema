use utf8;
package Schema::Bugzilla::2_23_3::Result::Longdesc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_3::Result::Longdesc

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

=head1 TABLE: C<longdescs>

=cut

__PACKAGE__->table("longdescs");

=head1 ACCESSORS

=head2 comment_id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_nullable: 0

=head2 who

  data_type: 'mediumint'
  is_nullable: 0

=head2 bug_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 work_time

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [5,2]

=head2 thetext

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isprivate

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 already_wrapped

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "comment_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_nullable => 0 },
  "who",
  { data_type => "mediumint", is_nullable => 0 },
  "bug_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "work_time",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [5, 2],
  },
  "thetext",
  { data_type => "mediumtext", is_nullable => 0 },
  "isprivate",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "already_wrapped",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</comment_id>

=back

=cut

__PACKAGE__->set_primary_key("comment_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 23:25:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OuXP5iWKMMrmZ++AAj2/Pw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
