package Schema::Hp3k::Result::InvoiceAuto;

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

Schema::Hp3k::Result::InvoiceAuto

=cut

__PACKAGE__->table("INVOICE_AUTO");

=head1 ACCESSORS

=head2 invoice_no

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 12

=head2 total_value

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "invoice_no",
  { data_type => "char", default_value => "", is_nullable => 0, size => 12 },
  "total_value",
  { data_type => "float", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("invoice_no");

=head1 RELATIONS

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.invoice_no" => "self.invoice_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Fpj5W9AWdMoXBfJu0jLOZg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
