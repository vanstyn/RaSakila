package Schema::Hp3k::Result::CustRemark;

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

Schema::Hp3k::Result::CustRemark

=cut

__PACKAGE__->table("CUST_REMARKS");

=head1 ACCESSORS

=head2 cust_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 descr

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 date_renewal

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 batch_no

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 date_opened

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "cust_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "descr",
  { data_type => "char", is_nullable => 1, size => 60 },
  "date_renewal",
  { data_type => "char", is_nullable => 1, size => 6 },
  "batch_no",
  { data_type => "char", is_nullable => 1, size => 8 },
  "date_opened",
  { data_type => "char", is_nullable => 1, size => 6 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DDSpudKgjJiyybF4oH8bdQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
