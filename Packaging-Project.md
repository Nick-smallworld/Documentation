== Objectives ==

* To increase the distribution of our beloved and most favorite blogging platform
* To make it easier for people to install Movable Type
* To make it possible to automate the upgrade of Movable Type

== Project Plan ==

# Build a dependency tree
# Map each node of the tree to software bundles available in .rpm and .deb formats
# Identify any components that MT relies on directly or indirectly that do not yet have a bundle available in .rpm or .deb formats
# Determine which dependencies are required and optional
# Build packaging specs:
#* Red Hat (.rpm)
#* Debian (.deb)

== Dependency Tree ==

Use the space below to begin recording those modules that Movable Type depends upon. For each of those modules record their dependencies, and so on down the line.

=== Required Modules that MT does NOT Redistribute ===

* DBI

=== Optional Modules that MT does NOT Redistribute ===

* Archive::Tar
* Archive::Zip
* Crypt::DSA
* Digest::SHA1
* HTML::Entities
* Image::Magick
* IO::Compress::Gzip
* IO::Uncompress:Gunzip
* List::Util
* LWP::UserAgent
* Mail::Sendmail
* MIME::Base64
* Storable

=== Bundled with plugins ===

* HTML::Entities (WXR Importer)
* PHP Markdown  (redistributed with permission and in accordance with their license)
* Markdown with Smartypants (redistributed with permission and in accordance with their license)

=== Redistributed with Core ===

'''Perl modules (all can be found on CPAN with the exception of TheSchwartz).'''

{| 
! Module
! Version Distributed*
! Explicit requirement in core
! Debian name
! Debian unstable version
|- 
| [http://search.cpan.org/dist/Archive-Extract/ Archive::Extract]
| 0.08
| no
| n/a
| n/a
|-
| [http://search.cpan.org/dist/Cache/ Cache]
| 2.04
| no
| libcache-perl
| 2.04
|-
| [http://search.cpan.org/dist/CGI.pm/ CGI]
| 2.80
| yes
| perl-modules
| 3.15
|-
| [http://search.cpan.org/dist/Class-Accessor/ Class::Accessor]
| 0.22
| yes
| libclass-accessor-perl
| 0.31
|-
| [http://search.cpan.org/dist/Class-Data-Inheritable/ Class::Data::Inheritable]
| 006
| no
| libclass-data-inheritable-perl
| 0.06
|-
| [http://search.cpan.org/dist/Class-ErrorHandler Class::ErrorHandler]
| 0.01
| no
| libclass-errorhandler-perl
| 0.01
|-
| [http://search.cpan.org/dist/Class-Trigger Class::Trigger]
| 0.10_01
| no
| libclass-trigger-perl
| 0.13
|-
| [http://search.cpan.org/dist/Crypt-DH Crypt::DH]
| 0.06
| no
| libcrypt-dh-perl
| 0.06
|-
| [http://search.cpan.org/dist/Data-ObjectDriver Data::ObjectDriver]
| UNKNOWN (based on 0.05)
| yes
| libdata-objectdriver-perl
| 0.05
|-
| [http://search.cpan.org/dist/File-Copy-Recursive/ File::Copy::Recursive]
| 0.23
| no
| libfile-copy-recursive-perl
| 0.35
|-
| [http://search.cpan.org/dist/File-Temp/ File::Temp]
| 0.12
| yes
| libfile-temp-perl, perl-modules
| 0.18, 0.20
| 
|-
| [http://search.cpan.org/dist/Heap/ Heap]
| 0.71
| no
| libheap-perl
| 0.80
|-
| [http://search.cpan.org/dist/HTML-Template/ HTML::Template]
| 2.8
| no
| libhtml-template-perl
| 2.9
|-
| [http://search.cpan.org/dist/I18N-LangTags/ I18N::LangTags]
| 0.27
| yes
| perl-modules
| 0.35
|-
| [http://search.cpan.org/dist/Image-Size/ Image::Size]
| 2.93
| yes
| libimage-size-perl
| 3.1
|-
| [http://search.cpan.org/dist/IO-stringy/ IO-stringy]
| 2.110
| no
| libio-stringy-perl
| 2.110
|-
| [http://search.cpan.org/dist/IPC-Cmd/ IPC::Cmd]
| 0.24
| no
| n/a
| n/a
|-
| [http://search.cpan.org/dist/JSON/ JSON]
| 0.99
| yes
| libjson-perl
| 2.01
|-
| [http://search.cpan.org/dist/Jcode/ Jcode]
| 0.88
| yes
| libjcode-pm-perl
| 2.06-1
|-
| [http://search.cpan.org/dist/libwww-perl/ libwww-perl]
| 5.64
| yes
| libwww-perl
| 5.808
|-
| [http://search.cpan.org/dist/Locale-MakeText/ Locale::MakeText]
| 1.03
| yes
| perl-modules
| 1.09
|-
| [http://search.cpan.org/dist/Math-BigInt/ Math::BigInt]
| 1.63
| yes
| perl-modules
| 1.77
|-
| [http://search.cpan.org/dist/MIME-Charset/ MIME::Charset]
| 0.044
| no
| libmime-charset-perl
| 0.044
|-
| [http://search.cpan.org/dist/MIME-EncWords/ MIME::EncWords]
| 0.040
| yes
| libmime-encwords-perl
| 0.040
|-
| [http://search.cpan.org/dist/Module-Load/ Module::Load]
| 0.10
| no
| libmodule-load-perl
| 0.10
|-
| [http://search.cpan.org/dist/Net-OpenID-Consumer/ Net::OpenID::Consumer]
| 0.12
| yes
| libnet-openid-consumer-perl
| 0.14
|-
| [http://search.cpan.org/dist/Params-Check/ Params::Check]
| 0.24
| no
| libparams-check-perl
| 0.26
|-
| [http://search.cpan.org/dist/Params-Validate/ Params::Validate]
| 0.73
| no
| libparams-validate-perl
| 0.89
|-
| [http://search.cpan.org/dist/SOAP-Lite/ SOAP::Lite]
| 0.52
| no
| libsoap-lite-perl
| 0.69
|-
| [http://code.sixapart.com/svn/TheSchwartz/ TheSchwartz]
| 1.06
| yes
| libtheschwartz-perl
| 1.04
|-
| [http://search.cpan.org/dist/UNIVERSAL-require/ UNIVERSAL::require]
| 0.11
| no
| libuniversal-require-perl
| 0.10
|-
| [http://search.cpan.org/dist/URI/ URI]
| 1.22
| yes
| liburi-perl
| 1.35.dfsg.1
|-
| [http://search.cpan.org/dist/URI-Fetch/ URI::Fetch]
| 0.05
| no
| liburi-fetch-perl
| 0.08
|-
| [http://search.cpan.org/dist/XML-Atom/ XML::Atom]
| 0.25
| yes
| libxml-atom-perl
| 0.25
|-
| [http://search.cpan.org/dist/XML-Elemental/ XML::Elemental]
| 2.0
| no
| n/a
| n/a
|-
| [http://search.cpan.org/dist/XML-NamespaceSupport/ XML::NamespaceSupport]
| 1.09
| no
| libxml-namespacesupport-perl
| 1.09
|-
| [http://search.cpan.org/dist/XML-SAX/ XML::SAX]
| 0.13
| yes
| libxml-sax-perl
| 0.16
|-
| [http://search.cpan.org/dist/XML-Simple/ XML::Simple]
| 2.14
| no
| libxml-simple-perl
| 2.18
|-
| [http://search.cpan.org/dist/XML-XPath/ XML::XPath]
| 1.13
| yes
| libxml-xpath-perl
| 1.13
|-
| [http://search.cpan.org/dist/YAML-Tiny/ YAML::Tiny]
| 1.12
| yes
| libyaml-tiny-perl
| 1.21
|-
|}


'''PHP Libraries'''

{| 
! Module
! Version Distributed*
|- 
| [http://smarty.php.net/ Smarty]
| 2.67
|-
| [http://php.justinvincent.com/ ezSQL]
| 1.26
|-
|}


* Version numbers are drawn from 4.15b4b (update still in progress)

== Status of packaging ==

=== Debian ===

* [http://packages.debian.org/sid/movabletype-opensource movabletype-opensource] package now available in Debian

== Known issues with non-extlib versions of modules ==

=== Class::Trigger >= 0.11_02 ===

Error:

Got an error: mutiple trigger registration in one add_trigger() call is deprecated. at /usr/share/perl5/MT/Entry.pm line 243

Fix: http://people.debian.org/~dom/patches/movabletype-opensource/4.1/add_trigger.diff

=== JSON >= 2 ===

StyleCatcher error:

Can't locate object method "delimiter" via package "JSON" at
/usr/local/share/perl/5.8.8/JSON.pm line 136.

Fix: http://people.debian.org/~dom/patches/movabletype-opensource/4.1/json.diff
