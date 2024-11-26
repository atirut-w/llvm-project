add_llvm_component_library(LLVMZ80Desc
    Z80MCTargetDesc.cpp

    LINK_COMPONENTS
    MC
    Z80Info

    ADD_TO_COMPONENT
    Z80
)
