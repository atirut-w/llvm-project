//===- ValueTypes.td - ValueType definitions ---------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Value types - These values correspond to the register types defined in the
// MachineValueTypes.h file.  If you update anything here, you must update it
// there as well!
//
//===----------------------------------------------------------------------===//

class ValueType<int size, int value> {
  string Namespace = "MVT";
  int Size = size;
  int Value = value;
}

def OtherVT : ValueType<0,   1>;  // "Other" value
def i1      : ValueType<1,   2>;  // One bit boolean value
def i2      : ValueType<2,   3>;  // 2-bit integer value
def i4      : ValueType<4,   4>;  // 4-bit integer value
def i8      : ValueType<8,   5>;  // 8-bit integer value
def i16     : ValueType<16,  6>;  // 16-bit integer value
def i24     : ValueType<24,  7>;  // 24-bit integer value
def i32     : ValueType<32,  8>;  // 32-bit integer value
def i64     : ValueType<64,  9>;  // 64-bit integer value
def i128    : ValueType<128,10>;  // 128-bit integer value

def bf16    : ValueType<16,  11>;  // 16-bit brain floating point value
def f16     : ValueType<16,  12>;  // 16-bit floating point value
def f32     : ValueType<32,  13>;  // 32-bit floating point value
def f64     : ValueType<64,  14>;  // 64-bit floating point value
def f80     : ValueType<80,  15>;  // 80-bit floating point value
def f128    : ValueType<128, 16>;  // 128-bit floating point value
def ppcf128 : ValueType<128, 17>;  // PPC 128-bit floating point value

def v1i1    : ValueType<1,    18>;  //    1 x i1 vector value
def v2i1    : ValueType<2,    19>;  //    2 x i1 vector value
def v4i1    : ValueType<4,    20>;  //    4 x i1 vector value
def v8i1    : ValueType<8,    21>;  //    8 x i1 vector value
def v16i1   : ValueType<16,   22>;  //   16 x i1 vector value
def v32i1   : ValueType<32,   23>;  //   32 x i1 vector value
def v64i1   : ValueType<64,   24>;  //   64 x i1 vector value
def v128i1  : ValueType<128,  25>;  //  128 x i1 vector value
def v256i1  : ValueType<256,  26>;  //  256 x i1 vector value
def v512i1  : ValueType<512,  27>;  //  512 x i1 vector value
def v1024i1 : ValueType<1024, 28>;  // 1024 x i1 vector value

def v128i2  : ValueType<256,  29>;   //  128 x i2 vector value

def v64i4   : ValueType<256,  30>;   //   64 x i4 vector value

def v1i8    : ValueType<8,    31>;  //    1 x i8 vector value
def v2i8    : ValueType<16,   32>;  //    2 x i8 vector value
def v4i8    : ValueType<32,   33>;  //    4 x i8 vector value
def v8i8    : ValueType<64,   34>;  //    8 x i8 vector value
def v16i8   : ValueType<128,  35>;  //   16 x i8 vector value
def v32i8   : ValueType<256,  36>;  //   32 x i8 vector value
def v64i8   : ValueType<512,  37>;  //   64 x i8 vector value
def v128i8  : ValueType<1024, 38>;  //  128 x i8 vector value
def v256i8  : ValueType<2048, 39>;  //  256 x i8 vector value
def v512i8  : ValueType<4096, 40>;  //  512 x i8 vector value
def v1024i8 : ValueType<8192, 41>;  // 1024 x i8 vector value

def v1i16   : ValueType<16,   42>;  //   1 x i16 vector value
def v2i16   : ValueType<32,   43>;  //   2 x i16 vector value
def v3i16   : ValueType<48,   44>;  //   3 x i16 vector value
def v4i16   : ValueType<64,   45>;  //   4 x i16 vector value
def v8i16   : ValueType<128,  46>;  //   8 x i16 vector value
def v16i16  : ValueType<256,  47>;  //  16 x i16 vector value
def v32i16  : ValueType<512,  48>;  //  32 x i16 vector value
def v64i16  : ValueType<1024, 49>;  //  64 x i16 vector value
def v128i16 : ValueType<2048, 50>;  // 128 x i16 vector value
def v256i16 : ValueType<4096, 51>;  // 256 x i16 vector value
def v512i16 : ValueType<8192, 52>;  // 512 x i16 vector value

def v1i32    : ValueType<32,    53>;  //    1 x i32 vector value
def v2i32    : ValueType<64,    54>;  //    2 x i32 vector value
def v3i32    : ValueType<96,    55>;  //    3 x i32 vector value
def v4i32    : ValueType<128,   56>;  //    4 x i32 vector value
def v5i32    : ValueType<160,   57>;  //    5 x i32 vector value
def v6i32    : ValueType<192,   58>;  //    6 x f32 vector value
def v7i32    : ValueType<224,   59>;  //    7 x f32 vector value
def v8i32    : ValueType<256,   60>;  //    8 x i32 vector value
def v16i32   : ValueType<512,   61>;  //   16 x i32 vector value
def v32i32   : ValueType<1024,  62>;  //   32 x i32 vector value
def v64i32   : ValueType<2048,  63>;  //   64 x i32 vector value
def v128i32  : ValueType<4096,  64>;  //  128 x i32 vector value
def v256i32  : ValueType<8192,  65>;  //  256 x i32 vector value
def v512i32  : ValueType<16384, 66>;  //  512 x i32 vector value
def v1024i32 : ValueType<32768, 67>;  // 1024 x i32 vector value
def v2048i32 : ValueType<65536, 68>;  // 2048 x i32 vector value

def v1i64   : ValueType<64,    69>;  //   1 x i64 vector value
def v2i64   : ValueType<128,   70>;  //   2 x i64 vector value
def v3i64   : ValueType<192,   71>;  //   3 x i64 vector value
def v4i64   : ValueType<256,   72>;  //   4 x i64 vector value
def v8i64   : ValueType<512,   73>;  //   8 x i64 vector value
def v16i64  : ValueType<1024,  74>;  //  16 x i64 vector value
def v32i64  : ValueType<2048,  75>;  //  32 x i64 vector value
def v64i64  : ValueType<4096,  76>;  //  64 x i64 vector value
def v128i64 : ValueType<8192,  77>;  // 128 x i64 vector value
def v256i64 : ValueType<16384, 78>;  // 256 x i64 vector value

def v1i128 : ValueType<128, 79>;  //  1 x i128 vector value

def v1f16    : ValueType<16,     80>;  //    1 x f16 vector value
def v2f16    : ValueType<32,     81>;  //    2 x f16 vector value
def v3f16    : ValueType<48,     82>;  //    3 x f16 vector value
def v4f16    : ValueType<64,     83>;  //    4 x f16 vector value
def v8f16    : ValueType<128,    84>;  //    8 x f16 vector value
def v16f16   : ValueType<256,    85>;  //   16 x f16 vector value
def v32f16   : ValueType<512,    86>;  //   32 x f16 vector value
def v64f16   : ValueType<1024,   87>;  //   64 x f16 vector value
def v128f16  : ValueType<2048,   88>;  //  128 x f16 vector value
def v256f16  : ValueType<4096,   89>;  //  256 x f16 vector value
def v512f16  : ValueType<8192,   90>;  //  512 x f16 vector value

def v2bf16   : ValueType<32,     91>;  //    2 x bf16 vector value
def v3bf16   : ValueType<48,     92>;  //    3 x bf16 vector value
def v4bf16   : ValueType<64,     93>;  //    4 x bf16 vector value
def v8bf16   : ValueType<128,    94>;  //    8 x bf16 vector value
def v16bf16  : ValueType<256,    95>;  //   16 x bf16 vector value
def v32bf16  : ValueType<512,    96>;  //   32 x bf16 vector value
def v64bf16  : ValueType<1024,   97>;  //   64 x bf16 vector value
def v128bf16 : ValueType<2048,   98>;  //  128 x bf16 vector value

def v1f32    : ValueType<32,     99>;  //    1 x f32 vector value
def v2f32    : ValueType<64,    100>;  //    2 x f32 vector value
def v3f32    : ValueType<96,    101>;  //    3 x f32 vector value
def v4f32    : ValueType<128,   102>;  //    4 x f32 vector value
def v5f32    : ValueType<160,   103>;  //    5 x f32 vector value
def v6f32    : ValueType<192,   104>;  //    6 x f32 vector value
def v7f32    : ValueType<224,   105>;  //    7 x f32 vector value
def v8f32    : ValueType<256,   106>;  //    8 x f32 vector value
def v16f32   : ValueType<512,   107>;  //   16 x f32 vector value
def v32f32   : ValueType<1024,  108>;  //   32 x f32 vector value
def v64f32   : ValueType<2048,  109>;  //   64 x f32 vector value
def v128f32  : ValueType<4096,  110>;  //  128 x f32 vector value
def v256f32  : ValueType<8192,  111>;  //  256 x f32 vector value
def v512f32  : ValueType<16384, 112>;  //  512 x f32 vector value
def v1024f32 : ValueType<32768, 113>;  // 1024 x f32 vector value
def v2048f32 : ValueType<65536, 114>;  // 2048 x f32 vector value

def v1f64    : ValueType<64,    115>;  //    1 x f64 vector value
def v2f64    : ValueType<128,   116>;  //    2 x f64 vector value
def v3f64    : ValueType<192,   117>;  //    3 x f64 vector value
def v4f64    : ValueType<256,   118>;  //    4 x f64 vector value
def v8f64    : ValueType<512,   119>;  //    8 x f64 vector value
def v16f64   : ValueType<1024,  120>;  //   16 x f64 vector value
def v32f64   : ValueType<2048,  121>;  //   32 x f64 vector value
def v64f64   : ValueType<4096,  122>;  //   64 x f64 vector value
def v128f64  : ValueType<8192,  123>;  //  128 x f64 vector value
def v256f64  : ValueType<16384, 124>;  //  256 x f64 vector value

def nxv1i1  : ValueType<1,  125>;  // n x  1 x i1  vector value
def nxv2i1  : ValueType<2,  126>;  // n x  2 x i1  vector value
def nxv4i1  : ValueType<4,  127>;  // n x  4 x i1  vector value
def nxv8i1  : ValueType<8,  128>;  // n x  8 x i1  vector value
def nxv16i1 : ValueType<16, 129>;  // n x 16 x i1  vector value
def nxv32i1 : ValueType<32, 130>;  // n x 32 x i1  vector value
def nxv64i1 : ValueType<64, 131>;  // n x 64 x i1  vector value

def nxv1i8  : ValueType<8,   132>;  // n x  1 x i8  vector value
def nxv2i8  : ValueType<16,  133>;  // n x  2 x i8  vector value
def nxv4i8  : ValueType<32,  134>;  // n x  4 x i8  vector value
def nxv8i8  : ValueType<64,  135>;  // n x  8 x i8  vector value
def nxv16i8 : ValueType<128, 136>;  // n x 16 x i8  vector value
def nxv32i8 : ValueType<256, 137>;  // n x 32 x i8  vector value
def nxv64i8 : ValueType<512, 138>;  // n x 64 x i8  vector value

def nxv1i16  : ValueType<16,  139>;  // n x  1 x i16 vector value
def nxv2i16  : ValueType<32,  140>;  // n x  2 x i16 vector value
def nxv4i16  : ValueType<64,  141>;  // n x  4 x i16 vector value
def nxv8i16  : ValueType<128, 142>;  // n x  8 x i16 vector value
def nxv16i16 : ValueType<256, 143>;  // n x 16 x i16 vector value
def nxv32i16 : ValueType<512, 144>;  // n x 32 x i16 vector value

def nxv1i32  : ValueType<32,   145>;  // n x  1 x i32 vector value
def nxv2i32  : ValueType<64,   146>;  // n x  2 x i32 vector value
def nxv4i32  : ValueType<128,  147>;  // n x  4 x i32 vector value
def nxv8i32  : ValueType<256,  148>;  // n x  8 x i32 vector value
def nxv16i32 : ValueType<512,  149>;  // n x 16 x i32 vector value
def nxv32i32 : ValueType<1024, 150>;  // n x 32 x i32 vector value

def nxv1i64  : ValueType<64,   151>;  // n x  1 x i64 vector value
def nxv2i64  : ValueType<128,  152>;  // n x  2 x i64 vector value
def nxv4i64  : ValueType<256,  153>;  // n x  4 x i64 vector value
def nxv8i64  : ValueType<512,  154>;  // n x  8 x i64 vector value
def nxv16i64 : ValueType<1024, 155>;  // n x 16 x i64 vector value
def nxv32i64 : ValueType<2048, 156>;  // n x 32 x i64 vector value

def nxv1f16  : ValueType<16,  157>;  // n x  1 x  f16 vector value
def nxv2f16  : ValueType<32,  158>;  // n x  2 x  f16 vector value
def nxv4f16  : ValueType<64,  159>;  // n x  4 x  f16 vector value
def nxv8f16  : ValueType<128, 160>;  // n x  8 x  f16 vector value
def nxv16f16 : ValueType<256, 161>;  // n x 16 x  f16 vector value
def nxv32f16 : ValueType<512, 162>;  // n x 32 x  f16 vector value

def nxv1bf16 : ValueType<16,  163>;  // n x  1 x bf16 vector value
def nxv2bf16 : ValueType<32,  164>;  // n x  2 x bf16 vector value
def nxv4bf16 : ValueType<64,  165>;  // n x  4 x bf16 vector value
def nxv8bf16 : ValueType<128, 166>;  // n x  8 x bf16 vector value

def nxv1f32  : ValueType<32,  167>;  // n x  1 x  f32 vector value
def nxv2f32  : ValueType<64,  168>;  // n x  2 x  f32 vector value
def nxv4f32  : ValueType<128, 169>;  // n x  4 x  f32 vector value
def nxv8f32  : ValueType<256, 170>;  // n x  8 x  f32 vector value
def nxv16f32 : ValueType<512, 171>;  // n x 16 x  f32 vector value

def nxv1f64  : ValueType<64,  172>;  // n x  1 x  f64 vector value
def nxv2f64  : ValueType<128, 173>;  // n x  2 x  f64 vector value
def nxv4f64  : ValueType<256, 174>;  // n x  4 x  f64 vector value
def nxv8f64  : ValueType<512, 175>;  // n x  8 x  f64 vector value

def x86mmx    : ValueType<64,   176>;  // X86 MMX value
def FlagVT    : ValueType<0,    177>;  // Pre-RA sched glue
def isVoid    : ValueType<0,    178>;  // Produces no value
def untyped   : ValueType<8,    179>;  // Produces an untyped value
def funcref   : ValueType<0,    180>;  // WebAssembly's funcref type
def externref : ValueType<0,    181>;  // WebAssembly's externref type
def x86amx    : ValueType<8192, 182>;  // X86 AMX value
def i64x8     : ValueType<512,  183>;  // 8 Consecutive GPRs (AArch64)

def token      : ValueType<0, 248>;  // TokenTy
def MetadataVT : ValueType<0, 249>;  // Metadata

// Pseudo valuetype mapped to the current pointer size to any address space.
// Should only be used in TableGen.
def iPTRAny    : ValueType<0, 250>;

// Pseudo valuetype to represent "vector of any size"
def vAny       : ValueType<0, 251>;

// Pseudo valuetype to represent "float of any format"
def fAny       : ValueType<0, 252>;

// Pseudo valuetype to represent "integer of any bit width"
def iAny       : ValueType<0, 253>;

// Pseudo valuetype mapped to the current pointer size.
def iPTR       : ValueType<0, 254>;

// Pseudo valuetype to represent "any type of any size".
def Any        : ValueType<0, 255>;

/// This class is for targets that want to use pointer types in patterns
/// with the GlobalISelEmitter.  Targets must define their own pointer
/// derived from this class.  The scalar argument should be an
/// integer type with the same bit size as the pointer.
/// e.g. def p0 : PtrValueType <i64, 0>;

class PtrValueType <ValueType scalar, int addrspace> :
    ValueType<scalar.Size, scalar.Value> {
  int AddrSpace = addrspace;
}
