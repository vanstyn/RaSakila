package Schema::GreenSheet::Result::Contact;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

Schema::GreenSheet::Result::Contact

=cut

__PACKAGE__->table("contact");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 full_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 first

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 middle

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 last

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 prefix

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 suffix

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 state

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 63

=head2 zip

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 country

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 96

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 phone

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 fax

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 mobile

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 home_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 webpage

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 instant_message

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 image_html

  data_type: 'text'
  is_nullable: 1

=head2 private_address

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_city

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_state

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_zip

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_email2

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_mobile

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 private_home_phone

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 company_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "full_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "first",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "middle",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "last",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "prefix",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "suffix",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "state",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 63 },
  "zip",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "country",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 96 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "email2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "phone",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "fax",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "mobile",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "home_phone",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "webpage",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "instant_message",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "image_html",
  { data_type => "text", is_nullable => 1 },
  "private_address",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_city",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_state",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_zip",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_email2",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_mobile",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "private_home_phone",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "company_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 aim_medias

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimMedia>

=cut

__PACKAGE__->has_many(
  "aim_medias",
  "Schema::GreenSheet::Result::AimMedia",
  { "foreign.primary_contact_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Schema::GreenSheet::Result::Object",
  { id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 company

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Company>

=cut

__PACKAGE__->belongs_to(
  "company",
  "Schema::GreenSheet::Result::Company",
  { id => "company_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 state

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::State>

=cut

__PACKAGE__->belongs_to(
  "state",
  "Schema::GreenSheet::Result::State",
  { state => "state" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 country

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Country>

=cut

__PACKAGE__->belongs_to(
  "country",
  "Schema::GreenSheet::Result::Country",
  { country => "country" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F/DnJ73UE/fdtZdIRf7mFA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
