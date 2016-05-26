use utf8;
package Schema::Bugzilla::3_1_2::Result::WhineEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_2::Result::WhineEvent

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

=head1 TABLE: C<whine_events>

=cut

__PACKAGE__->table("whine_events");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 owner_userid

  data_type: 'mediumint'
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 body

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "owner_userid",
  { data_type => "mediumint", is_nullable => 0 },
  "subject",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "body",
  { data_type => "mediumtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 16:13:52
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BW48Nt3h7JegrhoiChDghQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
