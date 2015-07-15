#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]		
then		
  echo -e $CL_BLU"Cherrypicking native patches"$CL_RST		
  cd frameworks/native		
  git fetch https://github.com/MaxiCM/android_frameworks_native patch-6
  git cherry-pick acde48d134a68ec0bc8dd86efdda577e4e834a54
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
