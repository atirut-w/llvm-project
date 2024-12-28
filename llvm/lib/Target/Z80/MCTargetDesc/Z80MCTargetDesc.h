//===-- Z80MCTargetDesc.h - Z80 Target Descriptor -----------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file provides Z80 specific target descriptions.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_Z80_MCTARGET_DESC_H
#define LLVM_Z80_MCTARGET_DESC_H

#include "llvm/MC/MCInstrInfo.h"
#include "llvm/Support/DataTypes.h"

namespace llvm {

MCInstrInfo *createZ80MCInstrInfo();

}

#define GET_REGINFO_ENUM
#include "Z80GenRegisterInfo.inc"

#define GET_INSTRINFO_ENUM
#define GET_INSTRINFO_MC_HELPER_DECLS
#include "Z80GenInstrInfo.inc"

#endif // LLVM_Z80_MCTARGET_DESC_H
