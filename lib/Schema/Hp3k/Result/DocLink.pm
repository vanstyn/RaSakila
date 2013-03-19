package Schema::Hp3k::Result::DocLink;

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

Schema::Hp3k::Result::DocLink

=cut

__PACKAGE__->table("doc_link");

=head1 ACCESSORS

=head2 doc_id

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "doc_id",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);
__PACKAGE__->set_primary_key("doc_id");

=head1 RELATIONS

=head2 bol_masts

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_masts",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.doc_id" => "self.doc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.doc_id" => "self.doc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 remarks

Type: has_many

Related object: L<Schema::Hp3k::Result::Remark>

=cut

__PACKAGE__->has_many(
  "remarks",
  "Schema::Hp3k::Result::Remark",
  { "foreign.doc_id" => "self.doc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_headers

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_headers",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.doc_id" => "self.doc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:heM7sDojG8CHW7DVJ5doBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
