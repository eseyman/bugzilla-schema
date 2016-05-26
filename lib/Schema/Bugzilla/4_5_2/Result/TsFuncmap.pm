use utf8;
package Schema::Bugzilla::4_5_2::Result::TsFuncmap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_2::Result::TsFuncmap

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

=head1 TABLE: C<ts_funcmap>

=cut

__PACKAGE__->table("ts_funcmap");

=head1 ACCESSORS

=head2 funcid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 funcname

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "funcid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "funcname",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</funcid>

=back

=cut

__PACKAGE__->set_primary_key("funcid");

=head1 UNIQUE CONSTRAINTS

=head2 C<ts_funcmap_funcname_idx>

=over 4

=item * L</funcname>

=back

=cut

__PACKAGE__->add_unique_constraint("ts_funcmap_funcname_idx", ["funcname"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:35:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YtkMcKoH2MgwZjz9IoMCNw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
