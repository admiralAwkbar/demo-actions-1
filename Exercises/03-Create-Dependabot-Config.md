# Configure Dependabot

In this session, we are going to be deploying [Dependabot](https://dependabot.com/) to your **GitHub Actions**. This is a built in tool inside **GitHub** that will help validate your code is up to date and free of known CVE's.

### Exercise: Add Dependabot config

1. Create a new branch called `Dependabot`
1. Go to your repository, click on **Settings**
1. On the left sidebar, click on **Security & Analysis**
1. Click **Enable** on `Dependabot Security Updates`
1. In the repository, create a new file named: `.github/dependabot.yml`
1. Copy and paste the following code snippet into the new file:

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

      # Maintain dependencies for js with npm
      - package-ecosystem: "npm"
        directory: "/dependencies"
        schedule:
          interval: "daily"
        open-pull-requests-limit: 10

      # Maintain dependencies for ruby with bundler
      - package-ecosystem: "bundler"
        directory: "/dependencies"
        schedule:
          interval: "daily"
        open-pull-requests-limit: 10
    ```

1. Commit the file.
1. Open a pull request and merge the `Dependabot` branch into the `main` branch.

## Links

- [Dependabot configuration](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/configuration-options-for-dependency-updates)
