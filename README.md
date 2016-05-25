# sendemail-fix
Instructions to make sendemail compatible with gmail (ssl-tls)

## Which error does it fix?
"invalid SSL_version specified at /usr/share/perl5/IO/Socket/SSL.pm line 332"

## How to apply it
* In the file /usr/share/perl5/IO/Socket/SSL.pm in the line 332:
* Replace:

m{^(!?)(?:(SSL(?:v2|v3|v23|v2/3))|(TLSv1[12]?))$}i
* With:

m{^(!?)(?:(SSL(?:v2|v3|v23|v2/3))|(TLSv1[12]?))}i

* You can test sendemail with the script in this repository "test-script.sh"

## Requirements
* apt-get install sendemail
* apt-get install libio-socket-ssl-perl libnet-ssleay-perl

Tested under Debian 7 and Debian 8.
