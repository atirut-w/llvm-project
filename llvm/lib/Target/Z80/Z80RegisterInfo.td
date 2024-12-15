//===-- Z80RegisterInfo.td - Z80 Register defs -------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

class Z80Reg<string name, list<Register> subregs = []> : RegisterWithSubRegs<name, subregs> {
  let Namespace = "Z80";
  let SubRegs = subregs;
}

let Namespace = "Z80" in {
  def sub_lo : SubRegIndex<0>;
  def sub_hi : SubRegIndex<1>;
}

def A : Z80Reg<"A">;
def F : Z80Reg<"F">;
def B : Z80Reg<"B">;
def C : Z80Reg<"C">;
def D : Z80Reg<"D">;
def E : Z80Reg<"E">;
def H : Z80Reg<"H">;
def L : Z80Reg<"L">;

def IXH : Z80Reg<"IXH">;
def IXL : Z80Reg<"IXL">;
def IYH : Z80Reg<"IYH">;
def IYL : Z80Reg<"IYL">;


let SubRegIndices = [sub_lo, sub_hi] in {
  def BC : Z80Reg<"BC", [B, C]>;
  def DE : Z80Reg<"DE", [D, E]>;
  def HL : Z80Reg<"HL", [H, L]>;
  def IX : Z80Reg<"IX", [IXH, IXL]>;
  def IY : Z80Reg<"IY", [IYH, IYL]>;
}

def GPR8 : RegisterClass<"Z80", [i8], 8, (add A, B, C, D, E, H, L)>;
def GPR16 : RegisterClass<"Z80", [i16], 8, (add BC, DE, HL)>;
def IDX16 : RegisterClass<"Z80", [i16], 8, (add IX, IY)>;
