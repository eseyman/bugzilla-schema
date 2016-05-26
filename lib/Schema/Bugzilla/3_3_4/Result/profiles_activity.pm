use utf8;
package Schema::Bugzilla::3_3_4::Result::profiles_activity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_3_4::Result::profiles_activity

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

=head1 TABLE: C<profiles_activity>

=cut

__PACKAGE__->table("profiles_activity");

=head1 ACCESSORS

=head2 userid

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 who

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 profiles_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 fieldid

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 oldvalue

  data_type: 'tinytext'
  is_nullable: 1

=head2 newvalue

  data_type: 'tinytext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "who",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "profiles_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "fieldid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "oldvalue",
  { data_type => "tinytext", is_nullable => 1 },
  "newvalue",
  { data_type => "tinytext", is_nullable => 1 },
);

=head1 RELATIONS

=head2 fieldid

Type: belongs_to

Related object: L<Schema::Bugzilla::3_3_4::Result::fielddefs>

=cut

__PACKAGE__->belongs_to(
  "fieldid",
  "Schema::Bugzilla::3_3_4::Result::fielddefs",
  { id => "fieldid" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::3_3_4::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::3_3_4::Result::profiles",
  { userid => "userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 who

Type: belongs_to

Related object: L<Schema::Bugzilla::3_3_4::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "who",
  "Schema::Bugzilla::3_3_4::Result::profiles",
  { userid => "who" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 18:25:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Hp6t1dT1lBtDv9EZtFV2Xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
