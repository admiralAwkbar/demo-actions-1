# Creating GitHub Security Scan Actions

The objective of *Security Scanning* is to achieve constant feedback on your codes security risks and enable the process of testing your code base.

**GitHub Actions** run off of workflow files that are managed and maintained in your repository.

## Add a GitHub Action workflow file

1. Create a new branch of code called `Security`
1. Create a new file named `.github/workflows/security.yml`
1. Copy the code below to the newly created file:
    ```yml
    ---
    ##########################
    ##########################
    ## CodeQL Security Scan ##
    ##########################
    ##########################
    name: CodeQl Analysis

    #
    # Documentation:
    # https://help.github.com/en/articles/workflow-syntax-for-github-actions
    # https://github.com/github/codeql-action
    #

    #############################
    # Start the job on all push #
    #############################
    on:
      push:
        branches-ignore:
          - 'master'
          - 'main'

    ###############
    # Set the Job #
    ###############
    jobs:
      scan:
        # Name the Job
        name: CodeQL Analysis
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
            uses: actions/checkout@v2.3.4
            with:
              # Full git history is needed to get a proper list of changed files
              fetch-depth: 0

          #####################
          # Initialize CodeQL #
          #####################
          - name: Initialize CodeQL
            uses: github/codeql-action/init@v1
            with:
              languages: python

          #######################
          # Run CodeQL Analysis #
          #######################
          - name: Perform CodeQL Analysis
            uses: github/codeql-action/analyze@v1
    ```
