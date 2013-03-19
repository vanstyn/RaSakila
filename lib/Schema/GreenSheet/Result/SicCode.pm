package Schema::GreenSheet::Result::SicCode;

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

Schema::GreenSheet::Result::SicCode

=cut

__PACKAGE__->table("sic_code");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  is_nullable: 0
  size: 4

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", is_nullable => 0, size => 4 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("code");

=head1 RELATIONS

=head2 companies

Type: has_many

Related object: L<Schema::GreenSheet::Result::Company>

=cut

__PACKAGE__->has_many(
  "companies",
  "Schema::GreenSheet::Result::Company",
  { "foreign.sic_code_id" => "self.code" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Sm1E6GwmR1z6GYadqvxDVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
