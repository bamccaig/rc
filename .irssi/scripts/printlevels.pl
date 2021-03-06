use Irssi;
use strict;
use vars qw($VERSION %IRSSI);
$VERSION = '1.1';
%IRSSI = (
	authors     => 'Wouter Coekaerts',
	contact     => 'wouter@coekaerts.be',
	name        => 'printlevels',
	description => 'prints the message level before every line. useful for debugging your level settings',
	license     => 'GPLv2',
	url         => 'http://wouter.coekaerts.be/irssi',
	changed     => '09/09/2003'
);

sub printlevels
{
	my ($dest, $text, $stripped) = @_;
    my $level = sprintf "[% 12s] ",
            substr(Irssi::bits2level($dest->{'level'}), 0, 12);
	$_[1] = $level . $text;
	Irssi::signal_continue(@_);
}

Irssi::signal_add('print text', 'printlevels');

