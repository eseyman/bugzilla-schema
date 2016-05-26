use utf8;
package Schema::Bugzilla::2_4::Result::products;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_4::Result::products

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

=head1 TABLE: C<products>

=cut

__PACKAGE__->table("products");

=head1 ACCESSORS

=head2 product

  data_type: 'tinytext'
  is_nullable: 1

=head2 description

  data_type: 'mediumtext'
  is_nullable: 1

=head2 milestoneurl

  data_type: 'tinytext'
  is_nullable: 0

=head2 disallownew

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "product",
  { data_type => "tinytext", is_nullable => 1 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
  "milestoneurl",
  { data_type => "tinytext", is_nullable => 0 },
  "disallownew",
  { data_type => "tinyint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-01 22:50:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oaqKo9peqFFdPWBnPjCv0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
