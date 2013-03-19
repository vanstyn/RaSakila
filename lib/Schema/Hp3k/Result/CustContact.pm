package Schema::Hp3k::Result::CustContact;

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

Schema::Hp3k::Result::CustContact

=cut

__PACKAGE__->table("CUST_CONTACT");

=head1 ACCESSORS

=head2 cust_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 cname

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 title

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 phone

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 flags_6_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 misc_arr_1

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 email

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "cust_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "cname",
  { data_type => "char", is_nullable => 1, size => 30 },
  "title",
  { data_type => "char", is_nullable => 1, size => 12 },
  "phone",
  { data_type => "char", is_nullable => 1, size => 14 },
  "flags_6_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "misc_arr_1",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "email",
  { data_type => "char", is_nullable => 1, size => 60 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zvLyVBBObx5zms7Z+B2JhA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
