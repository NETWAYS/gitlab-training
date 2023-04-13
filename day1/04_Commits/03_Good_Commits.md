!SLIDE
# Good Commits

Make it easy for you and others to understand the changes over time.

* Selectively add changes for a commit (do not commit everything)
* Write a short summary based on the changes (what and why)
* You can add references to existing commits or ticket ids

Over time, commits should tell a story of the history
of your repository and how it came to be the way that it currently is.

!SLIDE
# Good Commit Messages

* The subject line is the most important
* Describe why a change is being made in the body
* Do not assume the reviewer understands what the original problem was
* Do not assume the code is self-evident

Example:

    Improve UI acessibility

    Previously we had red and green buttons.
    This made them difficult to differentiate
    for colorblind people.
    We are now using blue and purple.
    
    fixes #1
