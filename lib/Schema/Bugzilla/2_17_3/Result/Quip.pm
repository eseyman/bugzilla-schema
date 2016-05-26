use utf8;
package Schema::Bugzilla::2_17_3::Result::Quip;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_3::Result::Quip

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

=head1 TABLE: C<quips>

=cut

__PACKAGE__->table("quips");

=head1 ACCESSORS

=head2 quipid

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 userid

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 0

=head2 quip

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "quipid",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "mediumint", default_value => 0, is_nullable => 0 },
  "quip",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</quipid>

=back

=cut

__PACKAGE__->set_primary_key("quipid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YCTvcIwsPHXuQ//PtEk3OA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
