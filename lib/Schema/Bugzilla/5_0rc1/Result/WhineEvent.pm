use utf8;
package Schema::Bugzilla::5_0rc1::Result::WhineEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::WhineEvent

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

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
  is_foreign_key: 1
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 body

  data_type: 'mediumtext'
  is_nullable: 1

=head2 mailifnobugs

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "owner_userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "subject",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "body",
  { data_type => "mediumtext", is_nullable => 1 },
  "mailifnobugs",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 owner_userid

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "owner_userid",
  "Schema::Bugzilla::5_0rc1::Result::Profile",
  { userid => "owner_userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 whine_queries

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::WhineQuery>

=cut

__PACKAGE__->has_many(
  "whine_queries",
  "Schema::Bugzilla::5_0rc1::Result::WhineQuery",
  { "foreign.eventid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 whine_schedules

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::WhineSchedule>

=cut

__PACKAGE__->has_many(
  "whine_schedules",
  "Schema::Bugzilla::5_0rc1::Result::WhineSchedule",
  { "foreign.eventid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:41:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SfiiAKX1aTbDRF/gzvfAOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
