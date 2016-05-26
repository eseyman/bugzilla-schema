use utf8;
package Schema::Bugzilla::4_5_2::Result::bug_see_also;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_2::Result::bug_see_also

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

=head1 TABLE: C<bug_see_also>

=cut

__PACKAGE__->table("bug_see_also");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 class

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "class",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_see_also_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_see_also_bug_id_idx", ["bug_id", "value"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_2::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::4_5_2::Result::bugs",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:55:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0ZY8rHWMoSciP8cwOxftzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
