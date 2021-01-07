# Configure Dependabot
- Create a new branch called Dependabot
- Go to your repository `settings/security & analysis`
  - `Enable Depenadabot Security Updates`
- You can copy the code below to the location: `.github/dependabot.yml`
- Commit the code and create a pull request

```yaml
#################################
# GitHub Dependabot Config info #
#################################
version: 2
updates:
  - package-ecosystem: github-actions
    directory: "/"
    schedule:
      interval: daily
    open-pull-requests-limit: 10

  # Maintain dependencies for docker
  - package-ecosystem: "docker"
    directory: "/"
    schedule:
      interval: "daily"
    open-pull-requests-limit: 10

  # Maintain dependencies for python with pip
  - package-ecosystem: "pip"
    directory: "/dependencies"
    schedule:
      interval: "daily"
    open-pull-requests-limit: 10
```

## Links
- [Dependabot configuration](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/configuration-options-for-dependency-updates)