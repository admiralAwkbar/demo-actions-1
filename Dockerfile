#########################################
#########################################
### Dockerfile to run some Some Build ###
#########################################
#########################################

# This is a copy of the GitHub Action runner
FROM myoung34/github-runner:2.293.0-ubuntu-bionic

#########################################
# Variables #
#########################################
ARG orgname="admiralawkbar"
ARG reponame="demo-actions-1"

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

########################################
# Copy dependencies files to container #
########################################
COPY dependencies/* /

# ################################
# # Installs python dependencies #
# ################################
# RUN pip3 install --no-cache-dir pipenv
# # Bug in hadolint thinks pipenv is pip
# # hadolint ignore=DL3042
# RUN pipenv install --clear --system

# ####################
# # Run NPM Installs #
# ####################
# RUN npm config set package-lock false \
# && npm config set loglevel error \
# && npm --no-cache install
# # Add node packages to path
# ENV PATH="/node_modules/.bin:${PATH}"

# ##############################
# # Installs ruby dependencies #
# ##############################
# RUN bundle install

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
