include $(TOP)/build/header.mk

products_$(d) := ermagerd

ermagerd_sources_$(d) += \
	core.cpp

ermagerd_precompiled_$(d) :=
ermagerd_target_dir_$(d)  := bin
ifdef DEBUG
ermagerd_cxx_flags_$(d)   := -std=c++14 -Isrc/ -g
else
ermagerd_cxx_flags_$(d)   := -std=c++14 -Isrc/ -O3
endif
ermagerd_ld_flags_$(d)    :=

include $(TOP)/build/footer.mk

