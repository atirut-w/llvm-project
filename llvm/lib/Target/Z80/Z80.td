include "llvm/Target/Target.td"
include "Z80RegisterInfo.td"
include "Z80InstrInfo.td"

def Z80InstrInfo : InstrInfo;

def Z80 : Target {
  let InstructionSet = Z80InstrInfo;
}
