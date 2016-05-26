use utf8;
package Schema::Bugzilla::4_5_6::Result::tag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_6::Result::tag

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

=head1 TABLE: C<tag>

=cut

__PACKAGE__->table("tag");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<tag_user_id_idx>

=over 4

=item * L</user_id>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("tag_user_id_idx", ["user_id", "name"]);

=head1 RELATIONS

=head2 bug_tags

Type: has_many

Related object: L<Schema::Bugzilla::4_5_6::Result::bug_tag>

=cut

__PACKAGE__->has_many(
  "bug_tags",
  "Schema::Bugzilla::4_5_6::Result::bug_tag",
  { "foreign.tag_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::4_5_6::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::4_5_6::Result::profiles",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:57:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uksC6s75CUPl/mDdtiFMLg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
