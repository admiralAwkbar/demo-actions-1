# Creating basic CT Github Action

This exercise will walk you through setting up *Continuous Testing* on your current repository.

The objective of *Continuous Testing* is to achieve constant feedback on your changes to your code base and enable the process of testing your code base.

**GitHub Actions** run off of workflow files that are managed and maintained in your repository. The action we are going to "install" on our repository uses an open source Action called the [Super Linter](https://github.com/github/super-linter). This action will review changes to the code and run a linter against it to ensure code sanity.

## Add a GitHub Action workflow file

1. Create a new branch of code called `CT`
1. Create a new file named `.github/workflows/ct.yml`
1. Copy the code below to the newly created file:
    ```yaml
    ---
    ########
    ########
    ## CT ##
    ########
    ########
    name: Continuous Testing

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
        name: CT
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
            uses: actions/checkout@v2

          ################################
          # Run Linter against code base #
          ################################
          - name: Lint Code Base
            uses: github/super-linter@v3
            env:
              VALIDATE_ALL_CODEBASE: false
              GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    ```

1. Commit the file.

This workflow file is set up to run when a push is made to branches in the repository, unless they are pushed to the `main` or `master` branch. This is controlled by this section of the code:

```yaml
    push:
      branches-ignore:
        - 'master'
        - 'main'
```

When we push a change to a branch, the GitHub Action will clone the repository code base, and run the Super Linter against the changes.

## Running your GitHub Action

1. Open a pull request with the `CT` branch into the `main` branch.

    In the pull request, you will see the GitHub Actions job running and its results. You can review the logs of the run and the steps it took by clicking on **Details** next to the GitHub Action. You can experiment with this Action, but making additional updates to the code and committing it.

1. Merge the pull request.