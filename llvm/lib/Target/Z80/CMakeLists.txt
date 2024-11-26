add_llvm_component_group(Z80)

add_llvm_target(Z80
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
