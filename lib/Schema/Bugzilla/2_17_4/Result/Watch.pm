use utf8;
package Schema::Bugzilla::2_17_4::Result::Watch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_4::Result::Watch

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

=head2 C<watcher>

=over 4

=item * L</watcher>

=item * L</watched>

=back

=cut

__PACKAGE__->add_unique_constraint("watcher", ["watcher", "watched"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yqE3DpRrTxCQBoE/QLJRmA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
