//===-- Z80MCTargetDesc.cpp - Z80 Target Descriptor -----------------------===//
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

#include "Z80MCTargetDesc.h"
#include "TargetInfo/Z80TargetInfo.h"
#include "Z80MCAsmInfo.h"

#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCELFStreamer.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"

#define GET_INSTRINFO_MC_DESC
#define ENABLE_INSTR_PREDICATE_VERIFIER
#include "Z80GenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "Z80GenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "Z80GenRegisterInfo.inc"

using namespace llvm;

MCInstrInfo *llvm::createZ80MCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitZ80MCInstrInfo(X);

  return X;
}

static MCRegisterInfo *createZ80MCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitZ80MCRegisterInfo(X, 0);

  return X;
}

static MCSubtargetInfo *createZ80MCSubtargetInfo(const Triple &TT,
                                                 StringRef CPU, StringRef FS) {
  return createZ80MCSubtargetInfoImpl(TT, CPU, /*TuneCPU*/ CPU, FS);
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeZ80TargetMC() {
  RegisterMCAsmInfo<Z80MCAsmInfo> X(getTheZ80Target());

  TargetRegistry::RegisterMCInstrInfo(getTheZ80Target(), createZ80MCInstrInfo);
  TargetRegistry::RegisterMCRegInfo(getTheZ80Target(), createZ80MCRegisterInfo);
  TargetRegistry::RegisterMCSubtargetInfo(getTheZ80Target(),
                                          createZ80MCSubtargetInfo);
}
