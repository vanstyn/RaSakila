package Schema::Hp3k::Result::SlsmMast;

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

Schema::Hp3k::Result::SlsmMast

=cut

__PACKAGE__->table("SLSM_MAST");

=head1 ACCESSORS

=head2 salesman

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 4

=head2 cname

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 terr_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 address1

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 address2

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 city

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 state

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 zip

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 phone

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 comm_pct

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_level

  data_type: 'integer'
  is_nullable: 1

=head2 parent_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 branch

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 misc_amts_1

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_2

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_3

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_4

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_5

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_6

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_7

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_8

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_9

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_10

  data_type: 'double precision'
  is_nullable: 1

=head2 flags_10_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 date_array_1

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_array_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_6

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 comm_code

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 fax

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 country

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 slsm_new

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 email

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 filler10

  data_type: 'char'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "salesman",
  { data_type => "char", default_value => "", is_nullable => 0, size => 4 },
  "cname",
  { data_type => "char", is_nullable => 1, size => 30 },
  "terr_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "address1",
  { data_type => "char", is_nullable => 1, size => 30 },
  "address2",
  { data_type => "char", is_nullable => 1, size => 30 },
  "city",
  { data_type => "char", is_nullable => 1, size => 20 },
  "state",
  { data_type => "char", is_nullable => 1, size => 2 },
  "zip",
  { data_type => "char", is_nullable => 1, size => 10 },
  "phone",
  { data_type => "char", is_nullable => 1, size => 14 },
  "comm_pct",
  { data_type => "smallint", is_nullable => 1 },
  "comm_level",
  { data_type => "integer", is_nullable => 1 },
  "parent_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "branch",
  { data_type => "char", is_nullable => 1, size => 4 },
  "misc_amts_1",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_2",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_3",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_4",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_5",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_6",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_7",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_8",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_9",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_10",
  { data_type => "double precision", is_nullable => 1 },
  "flags_10_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "date_array_1",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_array_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_6",
  { data_type => "char", is_nullable => 1, size => 6 },
  "comm_code",
  { data_type => "char", is_nullable => 1, size => 2 },
  "fax",
  { data_type => "char", is_nullable => 1, size => 14 },
  "country",
  { data_type => "char", is_nullable => 1, size => 16 },
  "slsm_new",
  { data_type => "char", is_nullable => 1, size => 4 },
  "email",
  { data_type => "char", is_nullable => 1, size => 60 },
  "filler10",
  { data_type => "char", is_nullable => 1, size => 10 },
);
__PACKAGE__->set_primary_key("salesman");

=head1 RELATIONS

=head2 cust_mast_salesmen

Type: has_many

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->has_many(
  "cust_mast_salesmen",
  "Schema::Hp3k::Result::CustMast",
  { "foreign.salesman" => "self.salesman" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_mast_terrs_no

Type: has_many

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->has_many(
  "cust_mast_terrs_no",
  "Schema::Hp3k::Result::CustMast",
  { "foreign.terr_no" => "self.salesman" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.salesman" => "self.salesman" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 date_array_1

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_array_1",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_array_1" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hv3WkmOfc9xfIcf6F6jHIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
