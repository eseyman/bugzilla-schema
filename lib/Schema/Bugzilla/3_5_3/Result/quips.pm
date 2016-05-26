use utf8;
package Schema::Bugzilla::3_5_3::Result::quips;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_5_3::Result::quips

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
  is_foreign_key: 1
  is_nullable: 1

=head2 quip

  data_type: 'mediumtext'
  is_nullable: 0

=head2 approved

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "quipid",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "quip",
  { data_type => "mediumtext", is_nullable => 0 },
  "approved",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</quipid>

=back

=cut

__PACKAGE__->set_primary_key("quipid");

=head1 RELATIONS

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::3_5_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::3_5_3::Result::profiles",
  { userid => "userid" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 10:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zg+BscROYaR0YyVofRpYOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
