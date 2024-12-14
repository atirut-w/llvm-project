//===-- Z80TargetMachine.h - Define TargetMachine for Z80 -------*- C++ -*--===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_Z80_TARGET_MACHINE_H
#define LLVM_Z80_TARGET_MACHINE_H

#include "llvm/CodeGen/CodeGenTargetMachineImpl.h"
namespace llvm {

class Z80TargetMachine : public CodeGenTargetMachineImpl {
public:
  Z80TargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                   StringRef FS, const TargetOptions &Options,
                   std::optional<Reloc::Model> RM,
                   std::optional<CodeModel::Model> CM, CodeGenOptLevel OL,
                   bool JIT);
};

} // namespace llvm

#endif // LLVM_Z80_TARGET_MACHINE_H
