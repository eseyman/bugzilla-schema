use utf8;
package Schema::Bugzilla::5_0rc1::Result::AttachData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::AttachData

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
  is_foreign_key: 1
  is_nullable: 0

=head2 thedata

  data_type: 'longblob'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "thedata",
  { data_type => "longblob", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 id

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Attachment>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Schema::Bugzilla::5_0rc1::Result::Attachment",
  { attach_id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:38:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KnLYaObRktCf/o9tGwVZFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
