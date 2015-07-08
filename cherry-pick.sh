#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-11.0" ] || [ "$DEVICE" = "degaswifi" ]		
then		
  echo -e $CL_BLU"Cherrypicking native patches"$CL_RST		
  cd frameworks/native		
  git fetch https://github.com/MaxiCM/android_frameworks_native patch-4
  git cherry-pick a65cd1e45f9b5221529804a848520f55a4467d90
  git cherry-pick 78c2dae904d996911b53003c8973c99fe34ee288
  git cherry-pick fbc50cf58b9a1ac77290405eab669477c205c6de
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
