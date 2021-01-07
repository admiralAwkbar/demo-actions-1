# Create the dockerfile
- Create a new branch called `Docker`
- In the root of the repository, add the following file: `Dockerfile`

```Dockerfile
#########################################
#########################################
### Dockerfile to run some Some Build ###
#########################################
#########################################

FROM myoung34/github-runner:latest

#########################################
# Label the instance and set maintainer #
#########################################
LABEL com.github.actions.name="Some Image" \
      com.github.actions.description="Its a build image" \
      com.github.actions.icon="code" \
      com.github.actions.color="red" \
      maintainer="GitHub DevOps <github_devops@github.com>" \
      org.opencontainers.image.authors="GitHub DevOps <github_devops@github.com>" \
      org.opencontainers.image.url="https://github.com/ORG_NAME/REPO_NAME" \
      org.opencontainers.image.source="https://github.com/ORG_NAME/REPO_NAME" \
      org.opencontainers.image.documentation="https://github.com/ORG_NAME/REPO_NAME" \
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
- **NOTE:** Update **ORG_NAME** and **REPO_NAME** to your current repository 
- Commit the file
- Open a pull Request and merge the code to main