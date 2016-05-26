use utf8;
package Schema::Bugzilla::4_5_5::Result::Profile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_5::Result::Profile

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

Related object: L<Schema::Bugzilla::4_5_5::Result::Attachment>

=cut

__PACKAGE__->has_many(
  "attachments",
  "Schema::Bugzilla::4_5_5::Result::Attachment",
  { "foreign.submitter_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 audit_logs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::AuditLog>

=cut

__PACKAGE__->has_many(
  "audit_logs",
  "Schema::Bugzilla::4_5_5::Result::AuditLog",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bug_user_last_visits

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::BugUserLastVisit>

=cut

__PACKAGE__->has_many(
  "bug_user_last_visits",
  "Schema::Bugzilla::4_5_5::Result::BugUserLastVisit",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::BugsActivity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::4_5_5::Result::BugsActivity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_assigned_to

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Bug>

=cut

__PACKAGE__->has_many(
  "bugs_assigned_to",
  "Schema::Bugzilla::4_5_5::Result::Bug",
  { "foreign.assigned_to" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_qa_contacts

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Bug>

=cut

__PACKAGE__->has_many(
  "bugs_qa_contacts",
  "Schema::Bugzilla::4_5_5::Result::Bug",
  { "foreign.qa_contact" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bugs_reporters

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Bug>

=cut

__PACKAGE__->has_many(
  "bugs_reporters",
  "Schema::Bugzilla::4_5_5::Result::Bug",
  { "foreign.reporter" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Cc>

=cut

__PACKAGE__->has_many(
  "ccs",
  "Schema::Bugzilla::4_5_5::Result::Cc",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 component_ccs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::ComponentCc>

=cut

__PACKAGE__->has_many(
  "component_ccs",
  "Schema::Bugzilla::4_5_5::Result::ComponentCc",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 components_initialowners

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Component>

=cut

__PACKAGE__->has_many(
  "components_initialowners",
  "Schema::Bugzilla::4_5_5::Result::Component",
  { "foreign.initialowner" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 components_initialqacontacts

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Component>

=cut

__PACKAGE__->has_many(
  "components_initialqacontacts",
  "Schema::Bugzilla::4_5_5::Result::Component",
  { "foreign.initialqacontact" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 email_bugs_ignore

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::EmailBugIgnore>

=cut

__PACKAGE__->has_many(
  "email_bugs_ignore",
  "Schema::Bugzilla::4_5_5::Result::EmailBugIgnore",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 email_settings

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::EmailSetting>

=cut

__PACKAGE__->has_many(
  "email_settings",
  "Schema::Bugzilla::4_5_5::Result::EmailSetting",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags_requestees

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Flag>

=cut

__PACKAGE__->has_many(
  "flags_requestees",
  "Schema::Bugzilla::4_5_5::Result::Flag",
  { "foreign.requestee_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 flags_setters

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Flag>

=cut

__PACKAGE__->has_many(
  "flags_setters",
  "Schema::Bugzilla::4_5_5::Result::Flag",
  { "foreign.setter_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 login_failures

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::LoginFailure>

=cut

__PACKAGE__->has_many(
  "login_failures",
  "Schema::Bugzilla::4_5_5::Result::LoginFailure",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 logincookies

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Logincooky>

=cut

__PACKAGE__->has_many(
  "logincookies",
  "Schema::Bugzilla::4_5_5::Result::Logincooky",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Longdesc>

=cut

__PACKAGE__->has_many(
  "longdescs",
  "Schema::Bugzilla::4_5_5::Result::Longdesc",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs_tags_activities

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::LongdescsTagsActivity>

=cut

__PACKAGE__->has_many(
  "longdescs_tags_activities",
  "Schema::Bugzilla::4_5_5::Result::LongdescsTagsActivity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedqueries

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Namedquery>

=cut

__PACKAGE__->has_many(
  "namedqueries",
  "Schema::Bugzilla::4_5_5::Result::Namedquery",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 namedqueries_links_in_footer

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::NamedqueriesLinkInFooter>

=cut

__PACKAGE__->has_many(
  "namedqueries_links_in_footer",
  "Schema::Bugzilla::4_5_5::Result::NamedqueriesLinkInFooter",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profile_searches

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::ProfileSearch>

=cut

__PACKAGE__->has_many(
  "profile_searches",
  "Schema::Bugzilla::4_5_5::Result::ProfileSearch",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profile_settings

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::ProfileSetting>

=cut

__PACKAGE__->has_many(
  "profile_settings",
  "Schema::Bugzilla::4_5_5::Result::ProfileSetting",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profiles_activities_who

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::ProfilesActivity>

=cut

__PACKAGE__->has_many(
  "profiles_activities_who",
  "Schema::Bugzilla::4_5_5::Result::ProfilesActivity",
  { "foreign.who" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profiles_activity_userids

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::ProfilesActivity>

=cut

__PACKAGE__->has_many(
  "profiles_activity_userids",
  "Schema::Bugzilla::4_5_5::Result::ProfilesActivity",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quips

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Quip>

=cut

__PACKAGE__->has_many(
  "quips",
  "Schema::Bugzilla::4_5_5::Result::Quip",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reports

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Report>

=cut

__PACKAGE__->has_many(
  "reports",
  "Schema::Bugzilla::4_5_5::Result::Report",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 series

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Series>

=cut

__PACKAGE__->has_many(
  "series",
  "Schema::Bugzilla::4_5_5::Result::Series",
  { "foreign.creator" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tags

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Tag>

=cut

__PACKAGE__->has_many(
  "tags",
  "Schema::Bugzilla::4_5_5::Result::Tag",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tokens

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Token>

=cut

__PACKAGE__->has_many(
  "tokens",
  "Schema::Bugzilla::4_5_5::Result::Token",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::UserGroupMap>

=cut

__PACKAGE__->has_many(
  "user_group_maps",
  "Schema::Bugzilla::4_5_5::Result::UserGroupMap",
  { "foreign.user_id" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 watch_watchers

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Watch>

=cut

__PACKAGE__->has_many(
  "watch_watchers",
  "Schema::Bugzilla::4_5_5::Result::Watch",
  { "foreign.watcher" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 watches_watched

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::Watch>

=cut

__PACKAGE__->has_many(
  "watches_watched",
  "Schema::Bugzilla::4_5_5::Result::Watch",
  { "foreign.watched" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 whine_events

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::WhineEvent>

=cut

__PACKAGE__->has_many(
  "whine_events",
  "Schema::Bugzilla::4_5_5::Result::WhineEvent",
  { "foreign.owner_userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-21 11:37:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VCQYU2FK90LI3H2i8uP0fw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
