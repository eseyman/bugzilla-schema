use utf8;
package Schema::Bugzilla::4_1_3::Result::whine_events;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_1_3::Result::whine_events

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

Related object: L<Schema::Bugzilla::4_1_3::Result::profiles>

=cut

__PACKAGE__->belongs_to(
  "owner_userid",
  "Schema::Bugzilla::4_1_3::Result::profiles",
  { userid => "owner_userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 whine_queries

Type: has_many

Related object: L<Schema::Bugzilla::4_1_3::Result::whine_queries>

=cut

__PACKAGE__->has_many(
  "whine_queries",
  "Schema::Bugzilla::4_1_3::Result::whine_queries",
  { "foreign.eventid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 whine_schedules

Type: has_many

Related object: L<Schema::Bugzilla::4_1_3::Result::whine_schedules>

=cut

__PACKAGE__->has_many(
  "whine_schedules",
  "Schema::Bugzilla::4_1_3::Result::whine_schedules",
  { "foreign.eventid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:27:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NZWtr0pLAXGzYP06qxHoAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
