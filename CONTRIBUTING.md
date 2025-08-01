# Contributing to Charmed HPC

Do you want to contribute to Charmed HPC? You've come to
the right place then! __Here is how you can get involved.__

Please take a moment to review this document so that the contribution
process will be easy and effective for everyone. Following these guidelines helps you communicate that you respect the maintainers and contributors developing Charmed HPC. In return, they will reciprocate that respect
while addressing your issue or assessing your submitted changes and/or features.

Have any questions? Feel free to ask them in the [Ubuntu High-Performance Computing
Matrix chat](https://matrix.to/#/#hpc:ubuntu.com).

### Table of Contents
 
* [Using the issue tracker](#using-the-issue-tracker)
* [Issues and Labels](#issues-and-labels)
* [Bug Reports](#bug-reports)
* [Enhancement Proposals](#enhancement-proposals)
* [Discussions](#discussions)
* [Guidelines and Resources](#guidelines-and-resources)
* [Pull Requests](#pull-requests)

## Using the issue tracker

The issue trackers are the preferred way for tracking [bug reports](#bug-reports), [enhancement proposals](#enhancement-proposals),
and [submitted pull requests](#pull-requests), but please follow these guidelines:

* Please __do not__ use the issue tracker for personal issues and/or support requests.
The [Discussions](#discussions) page is a better place to get help for personal support requests.

* Please __do not__ derail or troll issues. Keep the discussion on track and have respect for the other
users/contributors.

* Please __do not__ post comments consisting solely of "+1", ":thumbsup:", or something similar.
Use [GitHub's "reactions" feature](https://blog.github.com/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/)
instead.
  * The maintainers reserve the right to delete comments
  that violate this rule.

* Please __do not__ repost or reopen issues that have been closed. Please either
submit a new issue or browse through previous issues.
  * The maintainers reserve the right to delete issues
  that violate this rule.

* If you are unsure which repository's issue tracker an issue should be raised in, please reach out to the team on [Matrix](https://matrix.to/#/#hpc:ubuntu.com) or the [Charmed HPC Discussions page](https://github.com/orgs/charmed-hpc/discussions) to ask for help.

The Charmed HPC project's issue trackers use different labels to help organize and identify issues.
Here is a list of some of the labels the project uses, and how the maintainers use them:

* `C-filesystem` - Issues about the Component: Filesystem.

* `C-slurm` - Issues about the Component: Slurm.

* `docs` - Issues for improving or updating the documentation. Can also be used for pull requests.

* `cleanup` - Issues that pertain to improving the existing code base. Can also be used for pull requests.

* `feature` - Issues marked as an agreed upon feature to the code base. Can also be used for pull requests.

* `help wanted` - Issues where we need help from the greater open source community to solve.

* `good first issue` - Issues that may be a good fit for project newcomers looking to contribute.

For a look at the complete set of labels used by the Charmed HPC project, see the
[slurm-charm labels page](https://github.com/charmed-hpc/slurm-charms/labels).

## Bug Reports

Guidelines for reporting bugs:

1. __Validate your issue__ &mdash; ensure that your issue is not being caused by either
a semantic or syntactic error in your environment.

1. __Use the GitHub issue search__ &mdash; check if the issue you are encountering has
already been reported by someone else.

1. __Check if the issue has already been fixed__ &mdash; try to reproduce your issue
using the latest revision of the repository.

1. __Isolate the problem__ &mdash; the more pinpointed the issue, the easier it is to fix.

A good bug report should not leave others needing to chase you for more information.
Some common questions you should answer in your report include:

* What is your current environment?
* Were you able to reproduce the issue in another environment?
* Which commands/actions/configuration options/etc produce the issue?
* What was your expected outcome?

Please try to be as detailed as possible in your report. Detailed, comprehensive bug reports help the mainters quickly fix issues. 

## Enhancement Proposals

Charmed HPC's maintainers may already know what they want to add to Charmed HPC, but they are always open to new ideas and potentioal improvements. GitHub Discussions is a good place for discussing open-ended questions that pertain to the entire Charmed HPC project, but more focused enhancement proposal discussions can start within an issue tracker.

Please note that not all proposals may be incorporated into Charmed HPC. Also, please
know that spamming the maintainers to incorporate something you want will not improve the likelihood of being implemented; it may result in you receiving a temporary ban.

## Guidelines and Resources

The following guidelines should be followed if you are writing code to be merged into any of the respositories within the Charmed HPC GitHub organization. Some repositories will have additional guidelines; please read the corresponding CONTRIBUTING.md within the repository of interest.

### Documentation

* Any code contribution should be accompanied by a correspsonding documentation contribution to [Charmed HPC's documentation](https://github.com/charmed-hpc/docs), following the [documentation CONTRIBUTING.md guide](https://github.com/charmed-hpc/docs/blob/main/CONTRIBUTING.md).
  * If the code contribution does not require a documentation addition or change, please provide justification in the Pull Request.

### Conventional Commits 

* Follow [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) 
  
* Make sure the commits pass the repository's configured [`commitlint`](https://commitlint.js.org/) checks.
  
* You can use Git's
   [interactive rebase](https://help.github.com/articles/about-git-rebase/) feature to
   tidy up your commits.


### Python

To have your Python code contributions accepted into Charmed HPC, you must:

* Follow to the Python code style guidelines outlined in [Python Enhancement Proposal 8](https://pep8.org/).

* Have all classes, functions, and methods include a docstring that documents their functionality. 
  * *Docstrings must follow the
  [Google docstring format](https://github.com/google/styleguide/blob/gh-pages/pyguide.md#38-comments-and-docstrings)*.

* Use type annotations. Stub files can be used for providing type information for public modules.

* Pass all lint and static type checks.

* Pass all of the repository's existing unit and integration tests.

* Add appropriate tests which prove the correctness of your contributions.

If you are contributing to one of the charmed operators used in Charmed HPC, you must also:

* Follow to the operator development best practices outlined in the [operator development styleguide](https://juju.is/docs/sdk/styleguide).


### Useful Resources 

The following list provides a variety of resources of revelance to Charmed HPC that may be worth skimming prior to making a contribution.

-  [Charmed HPC documentation](https://canonical-charmed-hpc.readthedocs-hosted.com/latest/)
-  [Juju documentation](https://documentation.ubuntu.com/juju)
-  [Charmcraft documentation](https://canonical-charmcraft.readthedocs-hosted.com/stable/)
-  [Ops framework documentation](https://ops.readthedocs.io/en/latest/) for Juju
-  [Terraform/OpenTofu Provider for Juju documentation](https://canonical-terraform-provider-juju.readthedocs-hosted.com/en/latest/)
-  [OpenTofu documentation](https://opentofu.org/docs/)
-  [Slurm workload manager documentation](https://slurm.schedmd.com/documentation.html)

## Pull Requests

Good pull requests &mdash; patches, improvements, new features &mdash;
are a huge help. 

__Ask first__ before embarking on any __significant__ pull request such as
implementing new features, refactoring methods, or incorporating new libraries;
otherwise, you risk spending a lot of time working on something that Charmed HPC's
maintainers may not want to merge! For trivial changes,
or contributions that do not require a large amount of time, you can go ahead and
open a pull request.

Adhering to the following process is the best way to get your contribution accepted:

1. [Fork](https://help.github.com/articles/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/<repository>.git

   # Navigate to the newly cloned directory
   cd <repository>

   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/charmed-hpc/<repository>.git
   ```

2. If you cloned a while ago, pull the latest changes from the upstream repository:

   ```bash
   git checkout main
   git pull upstream main
   ```

3. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Ensure that your changes pass all tests.

   The tests may differ for different repositories. See the corresponding repository's CONTRIBUTING.md file
    for details on the appropriate tests. 


5. Sign and commit and your changes in logical chunks to your topic branch, using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

   To set up GPG or SSH key signing with git, see
   [GitHub's commit signature verification documentation](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

6. Locally rebase the upstream development branch into your topic branch:

   ```bash
   git pull --rebase upstream main
   ```

7. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

8. [Open a Pull Request](https://help.github.com/articles/about-pull-requests/)
   with a clear title and description against the `main` branch. Your pull request should also be focused and not contain commits that are not related to what you are contributing.

9. Conditionally, open a corresponding Pull Request on the [`docs`](https://github.com/charmed-hpc/docs) repository, following the [charmed-hpc/docs CONTRIBUTING.md guidelines](https://github.com/charmed-hpc/docs/blob/main/CONTRIBUTING.md#pull-requests-and-contributing-process), if you are making user-facing changes.

## Discussions

GitHub Discussions is a great place to connect with other Charmed HPC users to
discuss potential enhancements, ask questions, and resolve issues. Charmed HPC users
should remain respectful of each other. Discussion moderators reserve the right to
suspend discussions and/or delete posts that do not follow this rule.
