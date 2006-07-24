# Copyright (c) 2006 CentralNic Ltd. All rights reserved. This program is
# free software; you can redistribute it and/or modify it under the same
# terms as Perl itself.
# 
# $Id: Update.pm,v 1.3 2006/07/04 14:18:02 gavin Exp $
package Net::EPP::Frame::Command::Update;
use Net::EPP::Frame::Command::Update::Contact;
use Net::EPP::Frame::Command::Update::Domain;
use base qw(Net::EPP::Frame::Command);
use strict;

=pod

=head1 NAME

Net::EPP::Frame::Command::Update - an instance of L<Net::EPP::Frame::Command>
for the EPP C<E<lt>updateE<gt>> command.

=head1 OBJECT HIERARCHY

    L<XML::LibXML::Node>
    +----L<XML::LibXML::Document>
        +----L<Net::EPP::Frame>
            +----L<Net::EPP::Frame::Command>
                +----L<Net::EPP::Frame::Command::Update>

=head1 METHODS

=cut

sub add {
	my $self = shift;
	foreach my $el ($self->getNode('update')->getChildNodes->shift->getChildNodes) {
		return $el if ($el->localname eq 'contact:add');
	}
}

sub rem {
	my $self = shift;
	foreach my $el ($self->getNode('update')->getChildNodes->shift->getChildNodes) {
		return $el if ($el->localname eq 'contact:rem');
	}
}

sub chg {
	my $self = shift;
	foreach my $el ($self->getNode('update')->getChildNodes->shift->getChildNodes) {
		return $el if ($el->localname eq 'contact:chg');
	}
}

=pod

	my $el = $frame->add;
	my $el = $frame->rem;
	my $el = $frame->chg;

These methods return the elements that should be used to contain the changes
to be made to the object (ie C<domain:add>, C<domain:rem>, C<domain:chg>).

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
