# Copyright (c) 2006 CentralNic Ltd. All rights reserved. This program is
# free software; you can redistribute it and/or modify it under the same
# terms as Perl itself.
# 
# $Id: Check.pm,v 1.2 2006/01/09 13:24:42 gavin Exp $
package Net::EPP::Frame::Command::Check;
use base qw(Net::EPP::Frame::Command);
use strict;

=pod

=head1 NAME

Net::EPP::Frame::Command::Check - an instance of L<Net::EPP::Frame::Command>
for the EPP C<E<lt>checkE<gt>> command.

=head1 OBJECT HIERARCHY

    L<XML::LibXML::Node>
    +----L<XML::LibXML::Document>
        +----L<Net::EPP::Frame>
            +----L<Net::EPP::Frame::Command>
                +----L<Net::EPP::Frame::Command::Check>

=head1 METHODS

This module does not define any methods in addition to those it inherits from
its ancestors.

=head1 AUTHOR

Gavin Brown (L<epp@centralnic.com>) for CentralNic Ltd (http://www.centralnic.com/).

=head1 COPYRIGHT

This module is (c) 2006 CentralNic Ltd. This module is free software; you can
redistribute it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO

=over

=item * L<Net::EPP::Frame>

=back

=cut

1;
