Marvell_Patches
===============


--------------------------------------------------------------

How to add these patches in my repo? you need add this in local_manifest.xml

      <project path="patches" name="MaxiCM/Marvell_Patches" revision="master" remote="github" />

--------------------------------------------------------------

To apply patches:

      REPO_BRANCH="cm-11.0" DEVICE="degaswifi" patches/cherry-pick.sh
      
--------------------------------------------------------------

These patches are not tested. because I do not own the device
You are free to make fork in this repository, motherfucker

NOTE: after repo sync, need apply patches again

--------------------------------------------------------------
