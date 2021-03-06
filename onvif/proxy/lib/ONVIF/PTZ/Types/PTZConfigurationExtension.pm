package ONVIF::PTZ::Types::PTZConfigurationExtension;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %PTControlDirection_of :ATTR(:get<PTControlDirection>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        PTControlDirection
        Extension

    ) ],
    {
        'PTControlDirection' => \%PTControlDirection_of,
        'Extension' => \%Extension_of,
    },
    {
        'PTControlDirection' => 'ONVIF::PTZ::Types::PTControlDirection',
        'Extension' => 'ONVIF::PTZ::Types::PTZConfigurationExtension2',
    },
    {

        'PTControlDirection' => 'PTControlDirection',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::PTZConfigurationExtension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZConfigurationExtension from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PTControlDirection


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::PTZConfigurationExtension
   PTControlDirection =>  { # ONVIF::PTZ::Types::PTControlDirection
     EFlip =>  { # ONVIF::PTZ::Types::EFlip
       Mode => $some_value, # EFlipMode
     },
     Reverse =>  { # ONVIF::PTZ::Types::Reverse
       Mode => $some_value, # ReverseMode
     },
     Extension =>  { # ONVIF::PTZ::Types::PTControlDirectionExtension
     },
   },
   Extension =>  { # ONVIF::PTZ::Types::PTZConfigurationExtension2
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

