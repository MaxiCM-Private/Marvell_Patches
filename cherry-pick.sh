#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
 then
  echo -e $CL_BLU"Cherrypicking build patches"$CL_RST
  cd build/tools
  git fetch https://github.com/MaxiCM/android_build cm-11.0
  git cherry-pick 2496b15e9547e60b471484b812a28339b366fb70
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
 then
  echo -e $CL_BLU"Cherrypicking native patches"$CL_RST
  cd frameworks/native
  git fetch https://github.com/MaxiCM/android_frameworks_native patch-7
  git cherry-pick bbc2e59275bdb15144fd7b8fe3872ee386656a6f
  git cherry-pick 492d154b69e1ca7fdc74516201dba34a5106e4ed
  git cherry-pick fcdf21fda81b6d39a440290e831f77fa8f5415ab
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
then
  echo -e $CL_BLU"Cherrypicking hardware patches"$CL_RST
  cd hardware/libhardware_legacy
  git fetch https://github.com/MaxiCM/android_hardware_libhardware_legacy cm-11.0
  git cherry-pick c9c704a26e3198c9a9852cb963e47c39a835d980
  cd ../..
fi
