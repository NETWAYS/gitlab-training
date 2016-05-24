!SLIDE smbullets
# Gitflow Workflow

<center><img src="../_images/workflows/git_gitflow_workflow_01.png" alt="Gitflow Workflow"/></center>

!SLIDE smbullets
# Gitflow Workflow

* Strict branching model for project releases
* Based on Feature Branch Workflow
* Assigns roles to different branches
* Defines interaction between branches for releases
 * Prepare
 * Maintain
 * Record


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Gitflow Workflow - Historical Branches

* Master branch for release history (including version tags)
* Develop branch for feature integration

<center><img src="../_images/workflows/git_gitflow_workflow_02.png" alt="Gitflow Workflow"/></center>


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Gitflow Workflow - Feature Branches

* New features in their own branches
* Feature branches use `develop` as their parent branch
* Once completed, merged back to `develop`

<center><img src="../_images/workflows/git_gitflow_workflow_03.png" alt="Gitflow Workflow"/></center>


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Gitflow Workflow - Release Branches

* Enough features in `develop`: `release` branch based on `develop`
* Ready to ship: merged to `master` and tagged with version

<center><img src="../_images/workflows/git_gitflow_workflow_04.png" alt="Gitflow Workflow"/></center>


~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE smbullets
# Gitflow Workflow - Maintenance Branches

* Fixes based on `master`
* Merged to `master`, tagged and merged to `develop`

<center><img src="../_images/workflows/git_gitflow_workflow_05.png" alt="Gitflow Workflow"/></center>


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


