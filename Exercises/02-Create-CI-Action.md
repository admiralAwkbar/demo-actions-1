# Creating basic CI Github Action
This exercise will walk you through setting up Continuous Integration on your current repository.
The objective of Continuous Integration is to achieve constant feedback on your changes to your code base and begin the process of testing and deploying of your code base.

## Step 1
- You will need to create a **GitHub Actions** workflow file
- Create a new branch of code called `CI`
- Add the following file to that branch
  - `.github/workflows/ci.md`
- Copy the code below to the newly created file:
```yaml
---
########
########
## CI ##
########
########
name: Continuous Integration

#
# Documentation:
# https://help.github.com/en/articles/workflow-syntax-for-github-actions
#

#############################
# Start the job on all push #
#############################
# Don't need to run on push to master/main
on:
  push:
    branches-ignore:
      - 'master'
      - 'main'

###############
# Set the Job #
###############
jobs:
  build:
    # Name the Job
    name: CI
    # Set the agent to run on
    runs-on: ubuntu-latest
    ##################
    # Load all steps #
    ##################
    steps:
      ##########################
      # Checkout the code base #
      ##########################
      - name: Checkout Code
        uses: actions/checkout@master

      ################################
      # Run Linter against code base #
      ################################
      - name: Lint Code Base
        uses: github/super-linter@v3
        env:
          VALIDATE_ALL_CODEBASE: false
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

As you can see from the code above, this will run a job on all pushes, but not to a `main` or `master` branch.  
It will then clone your code base, and run a linter against it to validate code sanity.

## Step 2
- Create a Pull Request from the previously created branch
- You will now see in the Pull Request, the GitHub Actions job and its results
- You can drill into it and see the logs of the run, and how it was ran
- YOu can make additional updates to the code to make sure all code is passing, and merge the code to you main branch

## Step 3
Protecting your branches is essential to having a proper flow in your repository.
On GitHub, navigate to the main page of the repository.
Under your repository name, click  Settings.
Repository settings button
In the left menu, click Branches.
Repository options sub-menu
Next to "Branch protection rules", click Add rule.
Add branch protection rule button
Under "Branch name pattern", type the branch name or pattern you want to protect.
Branch rule field 
Optionally, you can configure specific branch rule settings.
Protected branch rule settings
To confirm your branch protection rule, click Create or Save changes.
