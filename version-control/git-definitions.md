# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	Version control allows the user to view a full history of saved edits to 1 or more files as well as merge changes made by other users. This is useful because projects can have multiple collaborators. Also, different revisions can be compared and, based on that, different saved versions can be used.
* What is a branch and why would you use one?
	Branches are either the default Master branch or an editable copy of the Master branch.  These branches can be edited indepedently of the Master. When merged back into the master branch, the new changes are added. This is useful so that the Master copy isn't affected by any experimental edits until those edits are ready. Branches are essentially varying timelines of commits. 
* What is a commit? What makes a good commit message?
	Commits are save points in Git, made after an edited file has been added to the staging list. A good commit message concisely explains what has been changed, usually starting with a verb in the imperative.
* What is a merge conflict?
	A merge conflict is when the current branch and the branch to be merged have both had changes since the last common commit (the commit from which the secondary branch was created). There are differences between the two versions and Git has no way of knowing which one is the "right answer."