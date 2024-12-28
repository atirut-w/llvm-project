class Z80Instr<dag outs, dag ins, string asmstr, list<dag> pattern>
    : Instruction {
  let Namespace = "Z80";

  dag OutOperandList = outs;
  dag InOperandList = ins;
  let AsmString = asmstr;
  let Pattern = pattern;
}
