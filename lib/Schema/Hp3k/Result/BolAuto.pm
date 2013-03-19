package Schema::Hp3k::Result::BolAuto;

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

Schema::Hp3k::Result::BolAuto

=cut

__PACKAGE__->table("BOL_AUTO");

=head1 ACCESSORS

=head2 bol_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=cut

__PACKAGE__->add_columns(
  "bol_no",
  { data_type => "char", is_nullable => 1, size => 12 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:K9qVsd5fwK+QmlOr3I1OfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
