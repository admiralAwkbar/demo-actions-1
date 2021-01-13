# Creating basic CI Github Action

This exercise will walk you through setting up *Continuous Integration* on your current repository.
The objective of *Continuous Integration* is to achieve constant feedback on your changes to your code base and begin the process of testing and deploying your code base.

**GitHub Actions** run off of workflow files that are managed and maintained in your repository. The first action we are going to "install" on our repository uses an open source Action called [Docker Build](https://github.com/docker/build-push-action). This action will try to build the current `Dockerfile` and see if it compiles successfully.

## Step 1: Add a GitHub Action workflow file

1. Create a new branch of code called `CI`
1. Create a new file named `.github/workflows/ci.yml`
1. Copy the code below to the newly created file:

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
            uses: actions/checkout@v2

          ########################
          # Setup Docker build X #
          ########################
          - name: Setup BuildX
            uses: docker/setup-buildx-action@v1

          ##############################
          # Build the docker container #
          ##############################
          - name: Build Docker container
            uses: docker/build-push-action@v2
            with:
              context: .
              file: ./Dockerfile
              build-args: |
                BUILD_DATE=${{ env.BUILD_DATE }}
                BUILD_REVISION=${{ github.sha }}
                BUILD_VERSION=${{ github.sha }}
              push: false
    ```

1. Commit the file.

This workflow file is set up to run when a push is made to branches in the repository, unless they are pushed to the `main` or `master` branch. This is controlled by this section of the code:

```yaml
    push:
      branches-ignore:
        - 'master'
        - 'main'
```

When we push a change to a branch, the GitHub Action will clone the repository code base, and run the docker build against the changes.

## Step 2: Running your GitHub Action

1. Open a pull request with the `CI` branch into the `main` branch.

    In the pull request, you will see the GitHub Actions job running and its results. You can review the logs of the run and the steps it took by clicking on **Details** next to the GitHub Action. You can experiment with this Action, but making additional updates to the code and committing it.

1. Merge the pull request.

## Step 3: Add branch protection rules

The last two pull requests we created and merged, were able to be merged without a required review. While this might work for this training repository, it doesn't scale well in the real world with business critical systems. Through the use of protected branches, we can enforce required reviews on pull requests to specific branches on our repository.

To protect our main branch and require at least one review and a passing test, perform the following:

1. On GitHub, navigate to the main page of the repository.
1. Under your repository name, click **Settings**.
1. In the left menu, click **Branches**.
1. Next to "Branch protection rules", click **Add rule**.
1. Under "Branch name pattern", type `main`.
1. Select the **Require pull request reviews before merging** checkbox.
1. Select the **Require status checks to pass before merging** checkbox.
1. Select the **Continuous Integration** checkbox in the Status checks found in the last week for this repository.
1. Click **Save changes**.
