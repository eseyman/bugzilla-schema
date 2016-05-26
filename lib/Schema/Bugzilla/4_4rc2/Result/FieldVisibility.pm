use utf8;
package Schema::Bugzilla::4_4rc2::Result::FieldVisibility;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::FieldVisibility

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

=head1 TABLE: C<field_visibility>

=cut

__PACKAGE__->table("field_visibility");

=head1 ACCESSORS

=head2 field_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 value_id

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "field_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "value_id",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<field_visibility_field_id_idx>

=over 4

=item * L</field_id>

=item * L</value_id>

=back

=cut

__PACKAGE__->add_unique_constraint("field_visibility_field_id_idx", ["field_id", "value_id"]);

=head1 RELATIONS

=head2 field

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::Fielddef>

=cut

__PACKAGE__->belongs_to(
  "field",
  "Schema::Bugzilla::4_4rc2::Result::Fielddef",
  { id => "field_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-08 12:15:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T5SH3p1p0b779Zh7VnORTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
