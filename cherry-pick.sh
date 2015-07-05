#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]		
then		
  echo -e $CL_BLU"Cherrypicking native patches"$CL_RST		
  cd frameworks/native		
  git fetch https://github.com/MaxiCM/android_frameworks_native patch-3
  git cherry-pick 9459d5dd66569dfbd78021584769501cbca24807
  git cherry-pick 121691da1d40c530e5f7eb982b6b922e197380e5
  cd ../..		
fi

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]		
then		
  echo -e $CL_BLU"Cherrypicking base patches"$CL_RST		
  cd frameworks/base		
  git fetch https://github.com/MaxiCM/android_frameworks_base cm-11.0
  git cherry-pick ffbd270ae534adaa5f5a2099e18214939324e9d8
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
