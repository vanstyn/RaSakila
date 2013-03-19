package Schema::Hp3k::Result::ArDetail;

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

Schema::Hp3k::Result::ArDetail

=cut

__PACKAGE__->table("AR_DETAIL");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 invoice_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 12

=head2 bill_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 date_applied

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_entered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 check_no

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 amt_applied

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 disc_code_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_amt_1

  data_type: 'integer'
  is_nullable: 1

=head2 disc_amt_2

  data_type: 'integer'
  is_nullable: 1

=head2 disc_amt_3

  data_type: 'integer'
  is_nullable: 1

=head2 disc_amt_4

  data_type: 'integer'
  is_nullable: 1

=head2 gl_debit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 comment1

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 batch_no

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 gl_credit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 currency_amt

  data_type: 'integer'
  is_nullable: 1

=head2 fisc

  data_type: 'char'
  is_nullable: 1
  size: 4

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

=head2 date_rec

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 rcpt_no

  data_type: 'integer'
  is_nullable: 1

=head2 gl_tranum

  data_type: 'integer'
  is_nullable: 1

=head2 currency_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 currency_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 filler20

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 divide_trigger_ran

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "invoice_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 12 },
  "bill_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "date_applied",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_entered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "check_no",
  { data_type => "char", is_nullable => 1, size => 16 },
  "amt_applied",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "disc_code_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_amt_1",
  { data_type => "integer", is_nullable => 1 },
  "disc_amt_2",
  { data_type => "integer", is_nullable => 1 },
  "disc_amt_3",
  { data_type => "integer", is_nullable => 1 },
  "disc_amt_4",
  { data_type => "integer", is_nullable => 1 },
  "gl_debit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "comment1",
  { data_type => "char", is_nullable => 1, size => 30 },
  "batch_no",
  { data_type => "char", is_nullable => 1, size => 8 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "gl_credit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "currency_amt",
  { data_type => "integer", is_nullable => 1 },
  "fisc",
  { data_type => "char", is_nullable => 1, size => 4 },
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
  "date_rec",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "rcpt_no",
  { data_type => "integer", is_nullable => 1 },
  "gl_tranum",
  { data_type => "integer", is_nullable => 1 },
  "currency_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "currency_rate",
  { data_type => "double precision", is_nullable => 1 },
  "filler20",
  { data_type => "char", is_nullable => 1, size => 20 },
  "divide_trigger_ran",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 date_rec

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_rec",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_rec" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 invoice_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->belongs_to(
  "invoice_no",
  "Schema::Hp3k::Result::ArHeader",
  { invoice_no => "invoice_no" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 bill_to

Type: belongs_to

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->belongs_to(
  "bill_to",
  "Schema::Hp3k::Result::CustMast",
  { cust_no => "bill_to" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_applied

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_applied",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_applied" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_entered

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_entered",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_entered" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CTRBfgZ8suZu3Tw+uNnnUA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
