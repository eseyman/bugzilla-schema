use utf8;
package Schema::Bugzilla::5_0rc1::Result::longdescs_tags;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::longdescs_tags

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

=head1 TABLE: C<longdescs_tags>

=cut

__PACKAGE__->table("longdescs_tags");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 comment_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 24

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "comment_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 24 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<longdescs_tags_idx>

=over 4

=item * L</comment_id>

=item * L</tag>

=back

=cut

__PACKAGE__->add_unique_constraint("longdescs_tags_idx", ["comment_id", "tag"]);

=head1 RELATIONS

=head2 comment

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::longdescs>

=cut

__PACKAGE__->belongs_to(
  "comment",
  "Schema::Bugzilla::5_0rc1::Result::longdescs",
  { comment_id => "comment_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:00:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eqvygexk4+E7CmEW0EcS5g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
