#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ../../../../../..

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m4

# Target part: none, sam3n4 or sam4l4aa
PART = sam4n16c

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = starter_kit_bootloader_demo_main_flash.elf
TARGET_SRAM = starter_kit_bootloader_demo_main_sram.elf

# List of C source files.
CSRCS = \
       common/components/display/ssd1306/font.c           \
       common/components/display/ssd1306/ssd1306.c        \
       common/components/memory/eeprom/at30tse75x/at30tse75x.c \
       common/components/memory/sd_mmc/sd_mmc.c           \
       common/components/memory/sd_mmc/sd_mmc_mem.c       \
       common/components/memory/sd_mmc/sd_mmc_spi.c       \
       common/services/clock/sam4n/sysclk.c               \
       common/services/delay/sam/cycle_counter.c          \
       common/services/serial/usart_serial.c              \
       common/services/sleepmgr/sam/sleepmgr.c            \
       common/services/spi/sam_spi/spi_master.c           \
       common/services/storage/ctrl_access/ctrl_access.c  \
       common/utils/interrupt/interrupt_sam_nvic.c        \
       common/utils/stdio/read.c                          \
       common/utils/stdio/write.c                         \
       sam/applications/starter_kit_bootloader_demo/main/main.c \
       sam/applications/starter_kit_bootloader_demo/main/multi_language_display.c \
       sam/boards/sam4n_xplained_pro/init.c               \
       sam/drivers/adc/adc2.c                             \
       sam/drivers/efc/efc.c                              \
       sam/drivers/gpbr/gpbr.c                            \
       sam/drivers/pio/pio.c                              \
       sam/drivers/pio/pio_handler.c                      \
       sam/drivers/pmc/pmc.c                              \
       sam/drivers/pmc/sleep.c                            \
       sam/drivers/rstc/rstc.c                            \
       sam/drivers/rtc/rtc.c                              \
       sam/drivers/spi/spi.c                              \
       sam/drivers/supc/supc.c                            \
       sam/drivers/twi/twi.c                              \
       sam/drivers/uart/uart.c                            \
       sam/drivers/usart/usart.c                          \
       sam/drivers/wdt/wdt.c                              \
       sam/services/flash_efc/flash_efc.c                 \
       sam/utils/cmsis/sam4n/source/templates/exceptions.c \
       sam/utils/cmsis/sam4n/source/templates/gcc/startup_sam4n.c \
       sam/utils/cmsis/sam4n/source/templates/system_sam4n.c \
       sam/utils/syscalls/gcc/syscalls.c                  \
       thirdparty/fatfs/fatfs-port-r0.09/diskio.c         \
       thirdparty/fatfs/fatfs-port-r0.09/sam/fattime_rtc.c \
       thirdparty/fatfs/fatfs-r0.09/src/ff.c              \
       thirdparty/fatfs/fatfs-r0.09/src/option/ccsbcs.c

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       common/boards                                      \
       common/components/display/ssd1306                  \
       common/components/memory/eeprom/at30tse75x         \
       common/components/memory/sd_mmc                    \
       common/services/clock                              \
       common/services/delay                              \
       common/services/gpio                               \
       common/services/ioport                             \
       common/services/serial                             \
       common/services/serial/sam_uart                    \
       common/services/sleepmgr                           \
       common/services/spi                                \
       common/services/spi/sam_spi                        \
       common/services/storage/ctrl_access                \
       common/services/twi                                \
       common/utils                                       \
       common/utils/stdio/stdio_serial                    \
       sam/applications/starter_kit_bootloader_demo/main  \
       sam/applications/starter_kit_bootloader_demo/main/sam4n16c_sam4n_xplained_pro \
       sam/boards                                         \
       sam/boards/sam4n_xplained_pro                      \
       sam/drivers/adc                                    \
       sam/drivers/efc                                    \
       sam/drivers/gpbr                                   \
       sam/drivers/pio                                    \
       sam/drivers/pmc                                    \
       sam/drivers/rstc                                   \
       sam/drivers/rtc                                    \
       sam/drivers/spi                                    \
       sam/drivers/supc                                   \
       sam/drivers/twi                                    \
       sam/drivers/uart                                   \
       sam/drivers/usart                                  \
       sam/drivers/wdt                                    \
       sam/services/flash_efc                             \
       sam/utils                                          \
       sam/utils/cmsis/sam4n/include                      \
       sam/utils/cmsis/sam4n/source/templates             \
       sam/utils/header_files                             \
       sam/utils/preprocessor                             \
       thirdparty/CMSIS/Include                           \
       thirdparty/CMSIS/Lib/GCC                           \
       thirdparty/fatfs/fatfs-port-r0.09/sam              \
       thirdparty/fatfs/fatfs-r0.09/src \
       sam/applications/starter_kit_bootloader_demo/main/sam4n16c_sam4n_xplained_pro/gcc

# Additional search paths for libraries.
LIB_PATH =  \
       thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM4l_math                                 \
       m                                                 

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam/applications/starter_kit_bootloader_demo/main/sam4n16c_sam4n_xplained_pro/linker_scripts/gcc/flash.ld
LINKER_SCRIPT_SRAM  = sam/utils/linker_scripts/sam4n/sam4n16c/gcc/sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam/boards/sam4n_xplained_pro/debug_scripts/gcc/sam4n_xplained_pro_flash.gdb
DEBUG_SCRIPT_SRAM  = sam/boards/sam4n_xplained_pro/debug_scripts/gcc/sam4n_xplained_pro_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O1

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM4=true                               \
       -D BOARD=SAM4N_XPLAINED_PRO                        \
       -D SD_MMC_ENABLE                                   \
       -D __SAM4N16C__                                    \
       -D printf=iprintf                                  \
       -D scanf=iscanf

# Extra flags to use when linking
LDFLAGS = \

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 