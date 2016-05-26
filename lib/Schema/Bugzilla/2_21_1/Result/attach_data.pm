use utf8;
package Schema::Bugzilla::2_21_1::Result::attach_data;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_21_1::Result::attach_data

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

=head1 TABLE: C<attach_data>

=cut

__PACKAGE__->table("attach_data");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_nullable: 0

=head2 thedata

  data_type: 'longblob'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_nullable => 0 },
  "thedata",
  { data_type => "longblob", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-07 11:49:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lGD9wbZ3lJRi87h9cV0o0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
