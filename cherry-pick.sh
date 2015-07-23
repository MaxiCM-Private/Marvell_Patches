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
  echo -e $CL_BLU"Cherrypicking av patches"$CL_RST
  cd frameworks/av
  git fetch https://github.com/MaxiCM/android_frameworks_av patch-1
  git cherry-pick 26de0785441924c383ba90e8b5ef0913c31a8ff3
  cd ../..
fi
