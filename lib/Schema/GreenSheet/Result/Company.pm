package Schema::GreenSheet::Result::Company;

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

Schema::GreenSheet::Result::Company

=cut

__PACKAGE__->table("company");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 company_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 address1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address2

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

=head2 phone

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 fax

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 sic_code_id

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 4

=head2 naics_code_id

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 industry

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 website

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 company_notes

  data_type: 'text'
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
  "company_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "address1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "state",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 63 },
  "zip",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "country",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 96 },
  "phone",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "fax",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "sic_code_id",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 4 },
  "naics_code_id",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "industry",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "website",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "company_notes",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

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

=head2 sic_code

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::SicCode>

=cut

__PACKAGE__->belongs_to(
  "sic_code",
  "Schema::GreenSheet::Result::SicCode",
  { code => "sic_code_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 naics_code

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::NaicsCode>

=cut

__PACKAGE__->belongs_to(
  "naics_code",
  "Schema::GreenSheet::Result::NaicsCode",
  { code => "naics_code_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 industry

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::CompanyIndustry>

=cut

__PACKAGE__->belongs_to(
  "industry",
  "Schema::GreenSheet::Result::CompanyIndustry",
  { industry => "industry" },
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

=head2 contacts

Type: has_many

Related object: L<Schema::GreenSheet::Result::Contact>

=cut

__PACKAGE__->has_many(
  "contacts",
  "Schema::GreenSheet::Result::Contact",
  { "foreign.company_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:z7E0jYK7rR82qzvtBerqdA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
