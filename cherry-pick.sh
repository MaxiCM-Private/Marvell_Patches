#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
then
  echo -e $CL_BLU"Cherrypicking libhardware patches"$CL_RST
  cd hardware/libhardware
  git fetch https://github.com/MaxiCM/android_hardware_libhardware cm-11.0
  git cherry-pick 85995fe1d648c8c2407d815398afa8bcc2f55428
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
then
  echo -e $CL_BLU"Cherrypicking multimedia patches"$CL_RST
  cd system/core
  git fetch https://github.com/MaxiCM/android_system_core cm-11.0
  git cherry-pick a8453a68a8fa2572699073c1eba020acb44ab970
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]
then
  echo -e $CL_BLU"Cherrypicking build patches"$CL_RST
  cd build/tools
  git fetch https://github.com/MaxiCM/android_build cm-11.0
  git cherry-pick 2496b15e9547e60b471484b812a28339b366fb70
  cd ../..
fi
