# NOTE: Derived from blib\lib\Disassemble\X86.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Disassemble::X86;

#line 2313 "blib\lib\Disassemble\X86.pm (autosplit into blib\lib\auto\Disassemble\X86\op_mm_rm.al)"
sub op_mm_rm {
  use strict;
  use warnings;
  use integer;
  my ($self, $op, $size, $proc) = @_;
  my ($mod, $mm, $rm) = $self->split_next_byte();
  my $arg = ($mod == 3) ? mmx_reg($rm) : $self->modrm($mod, $rm, $size);
  return { op=>$op, arg=>[mmx_reg($mm), $arg], proc=>$proc };
} # op_mm_rm

# end of Disassemble::X86::op_mm_rm
1;
