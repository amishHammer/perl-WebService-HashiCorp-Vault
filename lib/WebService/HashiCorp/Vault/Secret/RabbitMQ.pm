#!perl
# vim: softtabstop=4 tabstop=4 shiftwidth=4 ft=perl expandtab smarttab
# ABSTRACT: Perl API for HashiCorp's Vault (RabbitMQ)

# See also https://github.com/hashicorp/vault-ruby
# And https://github.com/ianunruh/hvac
# And https://www.vaultproject.io/api/index.html

package WebService::HashiCorp::Vault::Secret::RabbitMQ;

use Moo;
# VERSION
use namespace::clean;

extends 'WebService::HashiCorp::Vault::Secret::LeasableBase';

has '+mount'  => ( is => 'ro', default => 'rabbitmq' );

=encoding utf8

=head1 SYNOPSIS

 use WebService::HashiCorp::Vault;
 my $vault->new(%args);

 # Grab the RabbitMQ secret backend object
 my $rabbitmq = $vault->secret( backend => 'rabbitmq' );

 # Grab a generated credential for the database
 $rabbitmq->cred($name);

=head1 DESCRIPTION

The RabbitMQ Secret Backend handling for HashiCorps Vault server software.
To be used via L<WebService::HashiCorp::Vault>.

=head1 METHODS

=head2 creds

 my $credentials = $backend->creds($name);

 Generates dynamic credentials based upon the named role

B<Paramaters>

=over 4

=item $name (string: B<required>) - Specifies the name of the role to create credentials against. This is part of the request URL.

=back

B<Returns>

A hashref containing the credentials

=cut

1;