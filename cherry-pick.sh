#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]		
then		
  echo -e $CL_BLU"Cherrypicking native patches"$CL_RST		
  cd frameworks/native		
  git fetch https://github.com/MaxiCM/android_frameworks_native patch-1		
  git cherry-pick 1ae578773ad30bf5a991eb0226be47c0110dea9b		
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
