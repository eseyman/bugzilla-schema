use utf8;
package Schema::Bugzilla::4_1_3::Result::duplicates;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_1_3::Result::duplicates

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

=head1 TABLE: C<duplicates>

=cut

__PACKAGE__->table("duplicates");

=head1 ACCESSORS

=head2 dupe_of

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 dupe

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "dupe_of",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "dupe",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</dupe>

=back

=cut

__PACKAGE__->set_primary_key("dupe");

=head1 RELATIONS

=head2 dupe

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_3::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "dupe",
  "Schema::Bugzilla::4_1_3::Result::bugs",
  { bug_id => "dupe" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dupe_of

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_3::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "dupe_of",
  "Schema::Bugzilla::4_1_3::Result::bugs",
  { bug_id => "dupe_of" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:27:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ly2qkx2pYeXxaK8V1rv/bg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
