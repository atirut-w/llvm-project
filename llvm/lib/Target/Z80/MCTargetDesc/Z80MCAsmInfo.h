#ifndef LLVM_Z80_ASM_INFO_H
#define LLVM_Z80_ASM_INFO_H

#include "llvm/MC/MCAsmInfo.h"

namespace llvm {

class Triple;

class Z80MCAsmInfo : public MCAsmInfo {
public:
  explicit Z80MCAsmInfo(const Triple &TT, const MCTargetOptions &Options);
};

} // end namespace llvm

#endif // LLVM_Z80_ASM_INFO_H
