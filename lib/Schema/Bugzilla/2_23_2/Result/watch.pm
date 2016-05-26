use utf8;
package Schema::Bugzilla::2_23_2::Result::watch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_23_2::Result::watch

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
  is_nullable: 0

=head2 watched

  data_type: 'mediumint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "watcher",
  { data_type => "mediumint", is_nullable => 0 },
  "watched",
  { data_type => "mediumint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<watch_watcher_idx>

=over 4

=item * L</watcher>

=item * L</watched>

=back

=cut

__PACKAGE__->add_unique_constraint("watch_watcher_idx", ["watcher", "watched"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:53:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5qiYIae8mkPnNpqc1HjJQA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
