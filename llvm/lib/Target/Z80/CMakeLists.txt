add_llvm_component_group(Z80)

set(LLVM_TARGET_DEFINITIONS Z80.td)

tablegen(LLVM Z80GenRegisterInfo.inc -gen-register-info)

add_public_tablegen_target(Z80CommonTableGen)

add_llvm_target(Z80CodeGen
    Z80TargetMachine.cpp

    LINK_COMPONENTS
    Z80Desc
    Z80Info
    Support

    ADD_TO_COMPONENT
    Z80
)

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
