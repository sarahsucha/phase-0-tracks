# Git Definitions

**Instructions:** Define each of the following Git concepts.

* **What is version control?  Why is it useful?**
Version control enables us to see when and how a file was changed. Additionally, it allows several people to work on the same file simultaneously and can identify where conflicts may exist.

* **What is a branch and why would you use one?**
A branch is a replication of a code base (or any file(s)) in which one intends to make changes. It is commonly used for creating features before merging back into the master. A key benefit of using branches to make changes is that if something goes wrong it is easier to roll back to a reliable working point in the project's history.

* **What is a commit? What makes a good commit message?**
A commit is when a change in a file is applied and saved to a file. Until changes have been committed to a file they have not been saved to whatever branch you are working on.  

* **What is a merge conflict?**
A merge conflict happens when changes have happened in separate branches on the same lines of code in the master. For example if the master branch has a function 'a' and two branches are created, branch 1 changes function 'a' to function 'b' and branch 2 changes function 'a' to function 'c' a merge conflict will happen when the branches are merged as they are both trying to change the same part of the master code.
