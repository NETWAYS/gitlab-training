!SLIDE smbullets
# Redmine Ticketsystem Integration

* Configure a Git VCS for your Redmine project
* Define commit message patterns
 * Reference an issue
 * Auto-close an issue
* Web API for automated updates


~~~SECTION:handouts~~~

****

Cronjob example for updating the git repositories from the Web API:

    vim /etc/crontab
    */5 *   * * *   root    /usr/local/bin/redmine_git_sync > /dev/null 2>&1

    vim /usr/local/bin/redmine_git_sync

    #!/bin/sh
    
    TARGET=/tmp/redmine_git
    `wget "http://dev.icinga.org/sys/fetch_changesets?key=<REDMINEAPIKEY>" -o /dev/null -O $TARGET`
    rm $TARGET

~~~ENDSECTION~~~

!SLIDE smbullets noprint
# Redmine - Project Repository

<center><img src="../../_images/integrations/git_integrations_redmine_01.png" style="width: 600px;" alt="Redmine Integration"/></center>

!SLIDE smbullets printonly
# Redmine - Project Repository

<center><img src="../../_images/integrations/git_integrations_redmine_01.png" style="width:480px;height:155px" alt="Redmine Integration"/></center>

!SLIDE smbullets noprint
# Redmine - Global Repository Settings

<center><img src="../../_images/integrations/git_integrations_redmine_02.png" style="width: 600px;" alt="Redmine Integration"/></center>

!SLIDE smbullets printonly
# Redmine - Global Repository Settings

<center><img src="../../_images/integrations/git_integrations_redmine_02.png" style="width:480px;height:300px" alt="Redmine Integration"/></center>

!SLIDE smbullets noprint
# Redmine - Global Issue Resolving

<center><img src="../../_images/integrations/git_integrations_redmine_03.png" style="width: 600px;" alt="Redmine Integration"/></center>

!SLIDE smbullets printonly
# Redmine - Global Issue Resolving

<center><img src="../../_images/integrations/git_integrations_redmine_03.png" style="width:480px;height:218px" alt="Redmine Integration"/></center>
