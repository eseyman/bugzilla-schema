use utf8;
package Schema::Act::10::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::Order

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

=head1 TABLE: C<orders>

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 order_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'orders_order_id_seq'

=head2 conf_id

  data_type: 'text'
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 datetime

  data_type: 'timestamp'
  is_nullable: 0

=head2 means

  data_type: 'text'
  is_nullable: 1

=head2 currency

  data_type: 'text'
  is_nullable: 1

=head2 status

  data_type: 'text'
  is_nullable: 0

=head2 type

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "order_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "orders_order_id_seq",
  },
  "conf_id",
  { data_type => "text", is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "datetime",
  { data_type => "timestamp", is_nullable => 0 },
  "means",
  { data_type => "text", is_nullable => 1 },
  "currency",
  { data_type => "text", is_nullable => 1 },
  "status",
  { data_type => "text", is_nullable => 0 },
  "type",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</order_id>

=back

=cut

__PACKAGE__->set_primary_key("order_id");

=head1 RELATIONS

=head2 invoice

Type: might_have

Related object: L<Schema::Act::10::Result::Invoice>

=cut

__PACKAGE__->might_have(
  "invoice",
  "Schema::Act::10::Result::Invoice",
  { "foreign.order_id" => "self.order_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 order_items

Type: has_many

Related object: L<Schema::Act::10::Result::OrderItem>

=cut

__PACKAGE__->has_many(
  "order_items",
  "Schema::Act::10::Result::OrderItem",
  { "foreign.order_id" => "self.order_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Act::10::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Act::10::Result::User",
  { user_id => "user_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mtlwSthTc/0Vn3THMXIARw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
