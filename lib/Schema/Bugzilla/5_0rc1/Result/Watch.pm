use utf8;
package Schema::Bugzilla::5_0rc1::Result::Watch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::Watch

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

=head1 TABLE: C<watch>

=cut

__PACKAGE__->table("watch");

=head1 ACCESSORS

=head2 watcher

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 watched

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "watcher",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "watched",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<watch_watcher_idx>

=over 4

=item * L</watcher>

=item * L</watched>

=back

=cut

__PACKAGE__->add_unique_constraint("watch_watcher_idx", ["watcher", "watched"]);

=head1 RELATIONS

=head2 watched

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "watched",
  "Schema::Bugzilla::5_0rc1::Result::Profile",
  { userid => "watched" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 watcher

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "watcher",
  "Schema::Bugzilla::5_0rc1::Result::Profile",
  { userid => "watcher" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:38:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R/lxezt1W7C0dZjU/bvlQg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
