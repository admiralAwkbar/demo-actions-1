# :pencil2: Exercises

The goal of these exercises is to create a CI/CT/CD workflow with GitHub Actions.

As you work progressively along all the ordered files, your workflow will become more complex and thorough.

### Steps 1: Create Continuous Integration (CI)

- [Create Dockerfile](./01-Create-Dockerfile.md)
- [Create CI Action](./02-Create-CI-Action.md)

### Steps 2: Adding more complexity to the CI

- These steps would be more informative if you adopt a Git Flow:
  - [Create QA Branch](./02.A-Create-QA-Branch.md)
  - [Create Context Job](./02.B-Create-Context-Job.md)

### Steps 3: Dependency Management

- [Create Dependabot Config](./03-Create-Dependabot-Config.md)
- [Lock Your Dependencies](./03.A-Lock-Dependencies.md)

### Step 4: Add Continuous Testing (CT)

- [Create CT Actions](./04-Create-CT-Actions.md)

### Step 5: Security Scans

- [Create Security Scan](./05-Create-Security-Scan.md)

### Step 6: Actions for Artifacts Management

- [Upload and Download Build Artifacts](./06-Upload-Download-Artifacts.md)

### Step 7: Create Continuous Deployment (CD)

- [Create CD Actions](./07-Create-CD-Actions.md)
- [Deploy Docker Image](./07.A-Deploy-Prod.md)
- [Deploy Release Images](./07.B-Deploy-Release.md)

### Optional: Using Actions beyond CI/CT/CD

- [Using Actions to Create Issues](./08.A-GitHub-Script-Actions.md)
- [Using GitHub's API for Deployment to Update Environments](./08.B-Add-Deployment-API.md)
- [**Advanced**: Wait for Steps to Require Other Jobs to Complete](./08.C-Add-Wait-For-Steps.md)
- [**Advanced**: Additional information on Best Practices for Complex Workflows](./08.D-Split-Jobs-for-Speed.md)
- [**Advanced**: Reusing a Local Action](./09-Create-New-Repo-To-Pull-In-Container.md)

## :book: Additional Resources

- [GitHub Actions Documentation](https://docs.github.com/en/free-pro-team@latest/actions)
- [Self-paced Learning Lab Course on DevOps Pipeline with GitHub Actions](https://lab.github.com/githubtraining/devops-with-github-actions)
