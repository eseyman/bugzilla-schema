use utf8;
package Schema::Bugzilla::2_20rc1::Result::Setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_20rc1::Result::Setting

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

=head1 TABLE: C<setting>

=cut

__PACKAGE__->table("setting");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 default_value

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 is_enabled

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "default_value",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "is_enabled",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->set_primary_key("name");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-13 15:30:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GwhJIXgsKMQTlp1TkTu/WA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
