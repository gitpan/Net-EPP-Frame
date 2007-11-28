# Copyright (c) 2006 CentralNic Ltd. All rights reserved. This program is
# free software; you can redistribute it and/or modify it under the same
# terms as Perl itself.
# 
# $Id: Contact.pm,v 1.1 2006/07/12 13:11:54 gavin Exp $
package Net::EPP::Frame::Command::Create::Contact;
use base qw(Net::EPP::Frame::Command::Create);
use Net::EPP::Frame::ObjectSpec;
use strict;

=pod

=head1 NAME

Net::EPP::Frame::Command::Create::Contact - an instance of L<Net::EPP::Frame::Command::Create>
for contact objects.

=head1 SYNOPSIS

	use Net::EPP::Frame::Command::Create::Contact;
	use strict;

	my $check = Net::EPP::Frame::Command::Create::Contact->new;
	$create->setID('contact-id);

	print $create->toString(1);

This results in an XML document like this:

	<?xml version="1.0" encoding="UTF-8"?>
	<epp xmlns="urn:ietf:params:xml:ns:epp-1.0"
	  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xsi:schemaLocation="urn:ietf:params:xml:ns:epp-1.0
	  epp-1.0.xsd">
	    <command>
	      <check>
	        <contact:create
	          xmlns:contact="urn:ietf:params:xml:ns:contact-1.0"
	          xsi:schemaLocation="urn:ietf:params:xml:ns:contact-1.0
	          contact-1.0.xsd">
	            <contact:id>example-1.tldE<lt>/contact:id>
	        </contact:create>
	      </check>
	      <clTRID>0cf1b8f7e14547d26f03b7641660c641d9e79f45</clTRIDE<gt>
	    </command>
	</epp>

=head1 OBJECT HIERARCHY

    L<XML::LibXML::Node>
    +----L<XML::LibXML::Document>
        +----L<Net::EPP::Frame>
            +----L<Net::EPP::Frame::Command>
                +----L<Net::EPP::Frame::Command::Create>
                    +----L<Net::EPP::Frame::Command::Create::Contact>

=cut

sub new {
	my $package = shift;
	my $self = bless($package->SUPER::new('create'), $package);

	$self->addObject(Net::EPP::Frame::ObjectSpec->spec('contact'));

	$self->addEl('addr');
	$self->addEl('disclose');

	return $self;
}

=pod

=head1 METHODS

	my $element = $frame->addContact($contact_id);

This adds a contact ID to the list of contacts to be checked.

=cut

sub setContact {
	my ($self, $id) = @_;
	return $self->addEl('id', $id);
}

sub setName {
	my ($self, $name) = @_;
	return $self->addEl('name', $name);
}

sub setOrg {
	my ($self, $org) = @_;
	return $self->addEl('org', $org);
}

sub setVoice {
	my ($self, $voice) = @_;
	return $self->addEl('voice', $voice);
}

sub setFax {
	my ($self, $fax) = @_;
	return $self->addEl('fax', $fax);
}

sub setEmail {
	my ($self, $email) = @_;
	return $self->addEl('email', $email);
}

sub setAuthInfo {
	my ($self, $authInfo) = @_;
	return $self->addEl('authInfo', $authInfo);
}

sub addEl {
	my ($self, $name, $value) = @_;

	my $el = $self->createElement('contact:'.$name);
	$el->appendText($value) if defined($value);

	$self->getNode('create')->getChildNodes->shift->appendChild($el);

	return $el;
	
}

=pod

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
