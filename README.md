# TABLE OF CONTENTS
# 📍 Introduction:
Hosting your code on GitHub allows you to collaborate with other developers, keep track of changes to your code, and maintain version control. In this blog, we will discuss the end-to-end process of hosting your source code on GitHub, using various Git commands and workflows that are commonly used in day-to-day development.

# 🔹 Git Remote
The first step is to add the remote repository where your code will be hosted. Use the following command to add the remote repository to your local Git setup:

git remote add <name> <repository URL>
This command adds a new remote repository with the given name and URL. You can check the remote repository's URL using the following command:


git remote -v
This command lists all the remote repositories that are associated with your local repository.

# 🔹 Git Workflow/Lifecycle
The Git workflow that we use on a day-to-day basis is simple yet powerful. It involves three basic steps:

Add the changes to the staging area using git add.

Commit the changes to the local repository using git commit.

Push the changes to the remote repository using git push.

Here's the command to push your initial commit to the remote repository:


git add .
git commit -m "initial push for the repo"
git push -u origin main
# 🔹 Git Clone
You can clone a repository using HTTPS or SSH. When using HTTPS, you'll need to provide your GitHub username and password for authentication. On the other hand, when using SSH, you'll need to use your public key for authentication. Here's how to generate an SSH key in Linux using ssh-keygen -t rsa:

Open the terminal and type ssh-keygen -t rsa.

Follow the prompts to generate a new SSH key pair.

the contents of the public key file (e.g. ~/.ssh/id_rsa.pub).

Paste the contents of the public key into the GitHub SSH key field in your account settings.

# 🔹 Clone vs. Fork
There is a difference between cloning and forking a repository. When you clone a repository, you download a copy of the repository to your local machine. On the other hand, when you fork a repository, you create a new copy of the repository in your GitHub account.

# 📍 Feature Branch
Creating a feature branch is a best practice that helps you build new features without disturbing the production branch (e.g. master/main). Here's how to create a new feature branch and merge it back into the main branch using Git:


git checkout -b <branch-name>
# do some work on the feature branch
git checkout main
git merge <branch-name>
You can also use other Git commands like rebase and cherry-pick to merge changes from one branch to another. Here's a brief overview of these commands:

git merge: This command merges all changes from the specified branch into the current branch. The changes are reflected on the top of the main branch commit and can be seen using git log.

git rebase: This command helps you find the linear positioning of the commits being made. It's a best way to track the commits of other branches as per the linear fashion.

git cherry-pick: This command is used to merge one or more commits from one branch to another.

To see the commit history of a specific branch, use the following command:


git log <branch-name> --oneline
This command shows the commit history of the specified branch in a compact, one-line format.

# 📍 Conclusion:
In conclusion, Git is a powerful tool that can help developers manage and collaborate on source code with ease. With the ability to host code on GitHub, developers can work together to create new features, fix bugs, and improve the overall quality of their projects. By following the steps outlined in this guide, you can set up and manage your Git repository like a pro. From adding and committing code to creating new branches and merging changes, Git provides a range of tools to help you work more efficiently and effectively.