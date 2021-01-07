#!/bin/bash

################################################################################
# Simple docker script
################################################################################

########
# VARS #
########
GITHUB_EVENT_PATH="${GITHUB_EVENT_PATH}"         # Github Event Path
GITHUB_REPOSITORY="${GITHUB_REPOSITORY}"         # GitHub Org/Repo passed from system
GITHUB_RUN_ID="${GITHUB_RUN_ID}"                 # GitHub RUn ID to point to logs
GITHUB_SHA="${GITHUB_SHA}"                       # GitHub sha from the commit
GITHUB_TOKEN="${GITHUB_TOKEN}"                   # GitHub Token passed from environment
GITHUB_WORKSPACE="${GITHUB_WORKSPACE}"           # Github Workspace
VAR="${VAR:-nothing}"                            # Default var

################################################################################

##################
# Run the script #
##################
echo "----------------------------------------"
echo "Welcome to this container action!"
echo "----------------------------------------"
echo ""

echo "----------------------------------------"
echo "Heres whats in the env..."
printenv
echo "----------------------------------------"

echo "You passed the Var:[${VAR}]"