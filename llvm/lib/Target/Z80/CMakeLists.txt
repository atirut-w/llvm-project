add_llvm_component_group(Z80)

add_llvm_target(Z80
    Z80TargetMachine.cpp

    ADD_TO_COMPONENT
    Z80
)
