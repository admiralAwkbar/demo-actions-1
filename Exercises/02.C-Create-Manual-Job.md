# GitHub Manual Job

**GitHub Actions** allows you to be able to run manual jobs and pass the job inputs.

This allows the user to be able to set up jobs that run when they want to manually initiate them, and pass variables needed to complete the job.
This gives the users more flexability on how they could semi-automate the deploy/release process.

1. Create a branch called `manual-job`
1. Create a file, `.github/workflows/manual-deployment.yml`
1. Copy the following code:

> **:warning: Note:** This job is primarily used for manual triggers.

```yaml
# This is a basic workflow to help you get started with Actions
name: Manual Deployment

# Set the job to run manually
on:
  workflow_dispatch:
    # Set the input variables you want to pull in
    inputs:
      branch:
        description: 'Branch to deploy'
        required: true
        default: 'Dev'
      app_list:
        description: 'Comma separated list of apps to deploy'
        required: true
        default: 'App1,App2'

jobs:
  Deploy_Apps:
    runs-on: ubuntu-latest
    steps:
    - run: |
        echo "Running deployment of branch ${{ github.event.inputs.branch }}!"
        echo "- Deploying the following Apps: ${{ github.event.inputs.app_list }}!"
```

1. Open a pull request and merge the `manual-job` branch into the `main` branch.
