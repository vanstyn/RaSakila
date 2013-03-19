package Schema::Hp3k::Result::CommTbl;

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

Schema::Hp3k::Result::CommTbl

=cut

__PACKAGE__->table("COMM_TBL");

=head1 ACCESSORS

=head2 cust_prod_key

  data_type: 'char'
  is_nullable: 1
  size: 28

=head2 salesman

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_1

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_2

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_3

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_4

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_pct_1

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_2

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_3

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_4

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_5

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_pct

  data_type: 'smallint'
  is_nullable: 1

=head2 qty_arr_1

  data_type: 'integer'
  is_nullable: 1

=head2 qty_arr_2

  data_type: 'integer'
  is_nullable: 1

=head2 qty_arr_3

  data_type: 'integer'
  is_nullable: 1

=head2 qty_arr_4

  data_type: 'integer'
  is_nullable: 1

=head2 factor_arr_1

  data_type: 'integer'
  is_nullable: 1

=head2 factor_arr_2

  data_type: 'integer'
  is_nullable: 1

=head2 factor_arr_3

  data_type: 'integer'
  is_nullable: 1

=head2 factor_arr_4

  data_type: 'integer'
  is_nullable: 1

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "cust_prod_key",
  { data_type => "char", is_nullable => 1, size => 28 },
  "salesman",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_1",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_2",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_3",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_4",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_pct_1",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_2",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_3",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_4",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_5",
  { data_type => "smallint", is_nullable => 1 },
  "comm_pct",
  { data_type => "smallint", is_nullable => 1 },
  "qty_arr_1",
  { data_type => "integer", is_nullable => 1 },
  "qty_arr_2",
  { data_type => "integer", is_nullable => 1 },
  "qty_arr_3",
  { data_type => "integer", is_nullable => 1 },
  "qty_arr_4",
  { data_type => "integer", is_nullable => 1 },
  "factor_arr_1",
  { data_type => "integer", is_nullable => 1 },
  "factor_arr_2",
  { data_type => "integer", is_nullable => 1 },
  "factor_arr_3",
  { data_type => "integer", is_nullable => 1 },
  "factor_arr_4",
  { data_type => "integer", is_nullable => 1 },
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VmCHYHe3WGnNbpakG2+XCw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
