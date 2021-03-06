package RaSakila::Model::ItsInventory;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Schema::ItsInventory',
    
    connect_info => {
        dsn => 'dbi:mysql:its_inventory',
        user => 'root',
        password => '',
        quote_names => 1
    }
);

=head1 NAME

RaSakila::Model::ItsInventory - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<RaSakila>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Schema::ItsInventory>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.54

=head1 AUTHOR

root

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
