#!/bin/bash
export PATH_SCMD=/home/$USER/SimplicityStudio_v5/developer/adapter_packs/commander
echo "Check the toolchain version at /home/$USER/SimplicityStudio_v5/developer/toolchains/gnu_arm/ and change PATH_GCCARM env var in this file if it does not match with 10.3_2021.10"
export PATH_GCCARM=/home/$USER/SimplicityStudio_v5/developer/toolchains/gnu_arm/10.3_2021.10
export DEVICE=EFR32BG12P132F1024GL125
