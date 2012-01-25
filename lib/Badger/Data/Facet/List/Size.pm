package Badger::Data::Facet::List::Size;

use Badger::Data::Facet::Class
    version   => 0.01,
    type      => 'list',
    args      => 'size';


sub validate {
    my ($self, $value, $type) = @_;

    return scalar(@$value) == $self->{ size }
        ? $value
        : $self->invalid_msg( 
            wrong_size => $type || 'List', $self->{ size }, scalar(@$value) 
          );
}

1;

__END__

=head1 NAME

Badger::Data::Facet::List::Size - validation facet for the size of a list

=head1 DESCRIPTION

This module implements a validation facets that checks the size of a list.

=head1 METHODS

This module implement the following method in addition to those inherited from
the L<Badger::Data::Facet::List>, L<Badger::Data::Facet> and L<Badger::Base>
base classes.

=head2 validate($list_ref, $type)

This method validates that the size of the list (i.e. number of elements)
passed by reference as the first  argument equals to the pre-defined size.

=head1 AUTHOR

Andy Wardley L<http://wardley.org/>

=head1 COPYRIGHT

Copyright (C) 2008-2012 Andy Wardley.  All Rights Reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

L<Badger::Base>,
L<Badger::Data::Facet>,
L<Badger::Data::Facet::List>.

=cut

# Local Variables:
# mode: perl
# perl-indent-level: 4
# indent-tabs-mode: nil
# End:
#
# vim: expandtab shiftwidth=4:
