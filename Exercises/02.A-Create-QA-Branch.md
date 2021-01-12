# Creating additional protected branches

Many companies follow different models of deployment and git flow. Some only require the simple **GitHub** flow, while others use a more legacy git flow.
If you follow more of the [Git Flow](https://nvie.com/posts/a-successful-git-branching-model/), you will likely need to create additional protected branches like `DEV`, `QA`, or `PROD`.

![gitflow](https://user-images.githubusercontent.com/38323656/102368103-1c69ed80-3f80-11eb-9353-586432ec0678.png)
> An example workflow which adopts the Git Flow branching strategy

Once you have set up those branch protections, you can then use them later on to help trigger additional workflows and flags.

To protect our new branch(es) and require at least one review and a passing test, perform the following:

1. On GitHub, navigate to the main page of the repository.
1. Under your repository name, click **Settings**.
1. In the left menu, click **Branches**.
1. Next to "Branch protection rules", click **Add rule**.
1. Under "Branch name pattern", type `DEV` or `QA` or `PROD`.
1. Select the **Require pull request reviews before merging** checkbox.
1. Select the **Require status checks to pass before merging** checkbox.
1. Select the **Continuous Integration** checkbox in the Status checks found in the last week for this repository.
1. Click **Save changes**.
1. Repeat for all branches you wish to protect.
