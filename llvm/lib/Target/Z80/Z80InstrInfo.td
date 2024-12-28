include "Z80InstrFormats.td"

def RET : Z80Instr<(outs), (ins), "ret", []> {
  let isReturn = 1;
  let isTerminator = 1;
  let hasSideEffects = 1;
}
