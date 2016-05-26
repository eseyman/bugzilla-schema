use utf8;
package Schema::Bugzilla::4_5_5::Result::profiles;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_5::Result::profiles

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

=head1 TABLE: C<profiles>

=cut

__PACKAGE__->table("profiles");

=head1 ACCESSORS

=head2 userid

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 login_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 cryptpassword

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 realname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 disabledtext

  data_type: 'mediumtext'
  is_nullable: 0

=head2 disable_mail

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 mybugslink

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 extern_id

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 is_enabled

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 last_seen_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "login_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "cryptpassword",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "realname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "disabledtext",
  { data_type => "mediumtext", is_nullable => 0 },
  "disable_mail",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "mybugslink",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "extern_id",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "is_enabled",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "last_seen_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=back

=cut

__PACKAGE__->set_primary_key("userid");

=head1 UNIQUE CONSTRAINTS

=head2 C<profiles_extern_id_idx>

=over 4

=item * L</extern_id>

=back

=cut

__PACKAGE__->add_unique_constraint("profiles_extern_id_idx", ["extern_id"]);

=head2 C<profiles_login_name_idx>

=over 4

=item * L</login_name>

=back

=cut

__PACKAGE__->add_unique_constraint("profiles_login_name_idx", ["login_name"]);

=head1 RELATIONS

=head2 attachments

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::attachments>

=cut

__PACKAGE__->has_many(
  "attachments",
  "Schema::Bugzilla::4_5_5::Result::attachments",
  { "foreign.submitter_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 audit_logs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::audit_log>

=cut

__PACKAGE__->has_many(
  "audit_logs",
  "Schema::Bugzilla::4_5_5::Result::audit_log",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bug_user_last_visits

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::bug_user_last_visit>

=cut

__PACKAGE__->has_many(
  "bug_user_last_visits",
  "Schema::Bugzilla::4_5_5::Result::bug_user_last_visit",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::bugs_activity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::4_5_5::Result::bugs_activity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_assigned_to

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::bugs>

=cut

__PACKAGE__->has_many(
  "bugs_assigned_to",
  "Schema::Bugzilla::4_5_5::Result::bugs",
  { "foreign.assigned_to" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_qa_contacts

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::bugs>

=cut

__PACKAGE__->has_many(
  "bugs_qa_contacts",
  "Schema::Bugzilla::4_5_5::Result::bugs",
  { "foreign.qa_contact" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_reporters

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::bugs>

=cut

__PACKAGE__->has_many(
  "bugs_reporters",
  "Schema::Bugzilla::4_5_5::Result::bugs",
  { "foreign.reporter" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::cc>

=cut

__PACKAGE__->has_many(
  "ccs",
  "Schema::Bugzilla::4_5_5::Result::cc",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 component_ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::component_cc>

=cut

__PACKAGE__->has_many(
  "component_ccs",
  "Schema::Bugzilla::4_5_5::Result::component_cc",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 components_initialowners

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::components>

=cut

__PACKAGE__->has_many(
  "components_initialowners",
  "Schema::Bugzilla::4_5_5::Result::components",
  { "foreign.initialowner" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 components_initialqacontacts

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::components>

=cut

__PACKAGE__->has_many(
  "components_initialqacontacts",
  "Schema::Bugzilla::4_5_5::Result::components",
  { "foreign.initialqacontact" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 email_bugs_ignore

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::email_bug_ignore>

=cut

__PACKAGE__->has_many(
  "email_bugs_ignore",
  "Schema::Bugzilla::4_5_5::Result::email_bug_ignore",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 email_settings

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::email_setting>

=cut

__PACKAGE__->has_many(
  "email_settings",
  "Schema::Bugzilla::4_5_5::Result::email_setting",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags_requestees

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::flags>

=cut

__PACKAGE__->has_many(
  "flags_requestees",
  "Schema::Bugzilla::4_5_5::Result::flags",
  { "foreign.requestee_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags_setters

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::flags>

=cut

__PACKAGE__->has_many(
  "flags_setters",
  "Schema::Bugzilla::4_5_5::Result::flags",
  { "foreign.setter_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 login_failures

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::login_failure>

=cut

__PACKAGE__->has_many(
  "login_failures",
  "Schema::Bugzilla::4_5_5::Result::login_failure",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 logincookies

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::logincookies>

=cut

__PACKAGE__->has_many(
  "logincookies",
  "Schema::Bugzilla::4_5_5::Result::logincookies",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::longdescs>

=cut

__PACKAGE__->has_many(
  "longdescs",
  "Schema::Bugzilla::4_5_5::Result::longdescs",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs_tags_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::longdescs_tags_activity>

=cut

__PACKAGE__->has_many(
  "longdescs_tags_activities",
  "Schema::Bugzilla::4_5_5::Result::longdescs_tags_activity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedqueries

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::namedqueries>

=cut

__PACKAGE__->has_many(
  "namedqueries",
  "Schema::Bugzilla::4_5_5::Result::namedqueries",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedqueries_links_in_footer

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::namedqueries_link_in_footer>

=cut

__PACKAGE__->has_many(
  "namedqueries_links_in_footer",
  "Schema::Bugzilla::4_5_5::Result::namedqueries_link_in_footer",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profile_searches

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::profile_search>

=cut

__PACKAGE__->has_many(
  "profile_searches",
  "Schema::Bugzilla::4_5_5::Result::profile_search",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profile_settings

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::profile_setting>

=cut

__PACKAGE__->has_many(
  "profile_settings",
  "Schema::Bugzilla::4_5_5::Result::profile_setting",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profiles_activities_who

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::profiles_activity>

=cut

__PACKAGE__->has_many(
  "profiles_activities_who",
  "Schema::Bugzilla::4_5_5::Result::profiles_activity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profiles_activity_userids

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::profiles_activity>

=cut

__PACKAGE__->has_many(
  "profiles_activity_userids",
  "Schema::Bugzilla::4_5_5::Result::profiles_activity",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quips

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::quips>

=cut

__PACKAGE__->has_many(
  "quips",
  "Schema::Bugzilla::4_5_5::Result::quips",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reports

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::reports>

=cut

__PACKAGE__->has_many(
  "reports",
  "Schema::Bugzilla::4_5_5::Result::reports",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 series

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::series>

=cut

__PACKAGE__->has_many(
  "series",
  "Schema::Bugzilla::4_5_5::Result::series",
  { "foreign.creator" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tags

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::tag>

=cut

__PACKAGE__->has_many(
  "tags",
  "Schema::Bugzilla::4_5_5::Result::tag",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tokens

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::tokens>

=cut

__PACKAGE__->has_many(
  "tokens",
  "Schema::Bugzilla::4_5_5::Result::tokens",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::user_group_map>

=cut

__PACKAGE__->has_many(
  "user_group_maps",
  "Schema::Bugzilla::4_5_5::Result::user_group_map",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 watch_watchers

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::watch>

=cut

__PACKAGE__->has_many(
  "watch_watchers",
  "Schema::Bugzilla::4_5_5::Result::watch",
  { "foreign.watcher" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 watches_watched

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::watch>

=cut

__PACKAGE__->has_many(
  "watches_watched",
  "Schema::Bugzilla::4_5_5::Result::watch",
  { "foreign.watched" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 whine_events

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::whine_events>

=cut

__PACKAGE__->has_many(
  "whine_events",
  "Schema::Bugzilla::4_5_5::Result::whine_events",
  { "foreign.owner_userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:56:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:e2EJwgbQaAFcVwXmQkVT2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
