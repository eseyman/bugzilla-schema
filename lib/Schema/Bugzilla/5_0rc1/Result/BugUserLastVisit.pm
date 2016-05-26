use utf8;
package Schema::Bugzilla::5_0rc1::Result::BugUserLastVisit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::BugUserLastVisit

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

=head1 TABLE: C<bug_user_last_visit>

=cut

__PACKAGE__->table("bug_user_last_visit");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 last_visit_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "last_visit_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_user_last_visit_idx>

=over 4

=item * L</user_id>

=item * L</bug_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_user_last_visit_idx", ["user_id", "bug_id"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::5_0rc1::Result::Bug",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::5_0rc1::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:38:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5NrdlSkuTo+iHP7OvNaBVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
