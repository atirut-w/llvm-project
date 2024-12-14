#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"
#include "llvm/TargetParser/Triple.h"

namespace llvm {
Target &getTheZ80Target() {
  static Target TheZ80Target;
  return TheZ80Target;
}
} // namespace llvm

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeZ80TargetInfo() {
  llvm::RegisterTarget<llvm::Triple::z80> X(llvm::getTheZ80Target(), "z80",
                                            "Zilog Z80", "Z80");
}
