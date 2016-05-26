use utf8;
package Schema::Bugzilla::2_17_5::Result::Version;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_17_5::Result::Version

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

=head1 TABLE: C<versions>

=cut

__PACKAGE__->table("versions");

=head1 ACCESSORS

=head2 value

  data_type: 'tinytext'
  is_nullable: 1

=head2 product_id

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "value",
  { data_type => "tinytext", is_nullable => 1 },
  "product_id",
  { data_type => "smallint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 16:09:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uE098liNZ0MOHbzdWXaQZw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
