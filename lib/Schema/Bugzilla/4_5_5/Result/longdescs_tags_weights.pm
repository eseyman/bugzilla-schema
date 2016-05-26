use utf8;
package Schema::Bugzilla::4_5_5::Result::longdescs_tags_weights;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_5::Result::longdescs_tags_weights

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

=head1 TABLE: C<longdescs_tags_weights>

=cut

__PACKAGE__->table("longdescs_tags_weights");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 24

=head2 weight

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 24 },
  "weight",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<longdescs_tags_weights_tag_idx>

=over 4

=item * L</tag>

=back

=cut

__PACKAGE__->add_unique_constraint("longdescs_tags_weights_tag_idx", ["tag"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:56:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u1NUI/j+0/vh/yaX2ndDDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
