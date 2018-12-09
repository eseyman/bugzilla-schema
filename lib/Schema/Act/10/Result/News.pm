use utf8;
package Schema::Act::10::Result::News;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Act::10::Result::News

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

=head1 TABLE: C<news>

=cut

__PACKAGE__->table("news");

=head1 ACCESSORS

=head2 news_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'news_news_id_seq'

=head2 conf_id

  data_type: 'text'
  is_nullable: 0

=head2 datetime

  data_type: 'timestamp'
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=head2 published

  data_type: 'boolean'
  default_value: false
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "news_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "news_news_id_seq",
  },
  "conf_id",
  { data_type => "text", is_nullable => 0 },
  "datetime",
  { data_type => "timestamp", is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_nullable => 0 },
  "published",
  { data_type => "boolean", default_value => \"false", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</news_id>

=back

=cut

__PACKAGE__->set_primary_key("news_id");

=head1 RELATIONS

=head2 news_items

Type: has_many

Related object: L<Schema::Act::10::Result::NewsItem>

=cut

__PACKAGE__->has_many(
  "news_items",
  "Schema::Act::10::Result::NewsItem",
  { "foreign.news_id" => "self.news_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 23:23:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum://I3U52VbRMzXgDoYA8yhQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
