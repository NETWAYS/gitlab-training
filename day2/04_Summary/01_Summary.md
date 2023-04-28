!SLIDE subsection
# ~~~SECTION:MAJOR~~~ What have we learned?

!SLIDE smbullets
# The basics topics

* Cloning or initializing repositories
  * `git clone` or `git init`
* Working directory, staging area, commit
  * `git add`, `git rm`, `git commit`
* There is no thing as too much `git status`
* Viewing the history
  * `git log`, `git show`, `git diff`

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# The advanced topics

* Branching
  * `git branch`, `git checkout`
* Remote Repositories
  * `git push`, `git fetch`, `git pull`
* Merging and resolving conflicts
  * `git merge`
* Rebasing and squashing
  * `git rebase -i <SHA>`

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# git Best Practices

* Set user configuration (name, email)
* Try to write good commit messages
* Do not commit all changes at once - use staging with `git add` and then `git commit`
* Work with branches (features, bugfixes, etc.) whenever possible
* Rebase branches prior to creating a merge request
* Always force a merge commit with `--no-ff` to keep history trees in graphs


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Working with GitLab

* Creating Projects and `git remote`
* Working with Remote Branches
 * `git push --force`, `git push origin --delete feature/login`
* Create Milestone and First Issue
* Create Merge Request
* Creating Pipelines with Jobs
 * `.gitlab-ci.yml`

**This concludes the outlined training content.**

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~
