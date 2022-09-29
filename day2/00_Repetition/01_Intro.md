!SLIDE subsection noprint
# ~~~SECTION:MAJOR~~~ Repetition


!SLIDE smbullets noprint
# Let's repeat what we have learned
## Repository and Branches

   1. Use `cd` to leave the training repository  

   2. Create a new local repository  
     2.1 Add a new local name and email in `.gitconfig`  
     2.2 Add a `README.md` file and create a commit  
     2.3 Make changes in the `README.md` and amend the commit  

   3. Create and switch to a new `feature/testdata` branch  
     3.1 Create a directory called `testdata/`  
     3.2 Check the git status  
     3.3 Add an empty file called `.keep` in `testdata/`  
     3.4 Check the git status again  
     3.5 Commit the new directory  
    
    
!SLIDE smbullets  noprint

# Let's repeat what we have learned
## Advanced Commands

   1. Switch to the master branch  
     1.1 Edit + commit the `README.md`  
     1.2 Cherry-pick (with the -x flag) the first commit from `feature/testdata`  
     1.3 check the git log  

   2. Create and commit `.gitignore` that ignores `testdata/`  
     2.1 Check tig  
     2.2 Merge (with the --no-ff flag) the `feature/testdata` branch  
     2.3 Check tig again  

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

