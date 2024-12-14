#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/Support/Compiler.h"
#include "llvm/TargetParser/Triple.h"

#define GET_REGINFO_MC_DESC
#include "Z80GenRegisterInfo.inc"

using namespace llvm;

static MCRegisterInfo *createZ80MCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitZ80MCRegisterInfo(X, 0);

  return X;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeZ80TargetMC() {}
