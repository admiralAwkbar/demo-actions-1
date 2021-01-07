# Create the dockerfile

In this session, we are going to be deploying an application within a **Docker** container. Before we can deploy our app, we need to begin setting up a foundation to make changes to.

### Exercise: Add Dockerfile

1. Create a new branch called `Docker`
1. In the root of the repository, create a new file named: `Dockerfile`
1. Copy and paste the following code snippet into the new file:

      ```Dockerfile
      #########################################
      #########################################
      ### Dockerfile to run some Some Build ###
      #########################################
      #########################################
 
      # This is a copy of the GitHub Action runner
      FROM myoung34/github-runner:latest
      
      #########################################
      # Variables #
      #########################################
      ARG orgname="organization name"
      ARG reponame="repository name"

      #########################################
      # Label the instance and set maintainer #
      #########################################
      LABEL com.github.actions.name="Some Image" \
            com.github.actions.description="Its a build image" \
            com.github.actions.icon="code" \
            com.github.actions.color="red" \
            maintainer="GitHub DevOps <github_devops@github.com>" \
            org.opencontainers.image.authors="GitHub DevOps <github_devops@github.com>" \
            org.opencontainers.image.url="https://github.com/${orgname}/${reponame}" \
            org.opencontainers.image.source="https://github.com/${orgname}/${reponame}" \
            org.opencontainers.image.documentation="https://github.com/${orgname}/${reponame}" \
            org.opencontainers.image.vendor="GitHub" \
            org.opencontainers.image.description="Its a build image"

      ######################
      # Make the directory #
      ######################
      RUN mkdir -p /action/lib

      #############################
      # Copy scripts to container #
      #############################
      COPY library /action/lib

      ######################
      # Set the entrypoint #
      ######################
      ENTRYPOINT ["/action/lib/entrypoint.sh"]
      ```

      > **NOTE:** Update the **orgname** and **reponame** variables to your organization and repository names.

1. Commit the file.
1. Open a pull request and merge the `Docker` branch into the `main` branch.