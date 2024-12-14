#include "Z80TargetMachine.h"
#include "TargetInfo/Z80TargetInfo.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

namespace llvm {

static const char *Z80DataLayout =
    "e-m:e-p:16:8-i8:8-i16:8-i32:8-i64:8-f32:8-f64:8-n8-a:8";

static StringRef getCPU(StringRef CPU) {
  if (CPU.empty() || CPU == "generic") {
    return "z80";
  }

  return CPU;
}

static Reloc::Model getEffectiveRelocModel(std::optional<Reloc::Model> RM) {
  return RM.value_or(Reloc::Static);
}

Z80TargetMachine::Z80TargetMachine(const Target &T, const Triple &TT,
                                   StringRef CPU, StringRef FS,
                                   const TargetOptions &Options,
                                   std::optional<Reloc::Model> RM,
                                   std::optional<CodeModel::Model> CM,
                                   CodeGenOptLevel OL, bool JIT)
    : CodeGenTargetMachineImpl(T, Z80DataLayout, TT, getCPU(CPU), FS, Options,
                               getEffectiveRelocModel(RM),
                               getEffectiveCodeModel(CM, CodeModel::Small),
                               OL) {
  initAsmInfo();
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeZ80Target() {
  RegisterTargetMachine<Z80TargetMachine> X(getTheZ80Target());
}

} // namespace llvm
