# Contributing to Charmed HPC

Do you want to contribute to Charmed HPC? You've come to
the right place then! __Here is how you can get involved.__

Please take a moment to review this document so that the contribution
process will be easy and effective for everyone. Following these guidelines helps you communicate that you respect the maintainers
managing Charmed HPC. In return, they will reciprocate that respect
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

* If you are unsure which repository's issue tracker an issue should be raised in, please reach out to the team on [Matrix](https://matrix.to/#/#hpc:ubuntu.com) or the [Charmed HPC Discussions page](https://github.com/orgs/charmed-hpc/discussions) to ask.
  
## Issues and Labels

The issue tracker uses a variety of labels to help organize and identify issues.
Here is a list of some of these labels, and how the maintainers of the repository use them:

* `C-filesystem` - Issues about the Component: Filesystem.

* `C-slurm` - Issues about the Component: Slurm.

* `docs` - Issues for improving or updating the documentation. Can also be used for pull requests.

* `cleanup` - Issues that pertain to improving the existing code base. Can also be used for pull requests.

* `feature` - Issues marked as an agreed upon feature to the code base. Can also be used for pull requests.

* `help wanted` - Issues where we need help from the greater open source community to solve.

* `good first issue` - Issues that may be a good fit for project newcomers looking to contribute.

For a look at a complete set of labels used by one of the Charmed HPC repositories, see the
[slurm-charm labels page](https://github.com/charmed-hpc/slurm-charms/labels).

## Bug Reports

A bug is a *demonstrable problem* that is caused by errors in the corresponding repository's code.
Good bug reports make the code better, so
thank you for taking the time to report issues!

Guidelines for reporting bugs:

1. __Validate your issue__ &mdash; ensure that your issue is not being caused by either
a semantic or syntactic error in your environment.

2. __Use the GitHub issue search__ &mdash; check if the issue you are encountering has
already been reported by someone else.

3. __Check if the issue has already been fixed__ &mdash; try to reproduce your issue
using the latest revision of the repository.

4. __Isolate the problem__ &mdash; the more pinpointed the issue, the easier it is to fix.

A good bug report should not leave others needing to chase you for more information.
Some common questions you should answer in your report include:

* What is your current environment?
* Were you able to reproduce the issue in another environment?
* Which commands/actions/configuration options/etc produce the issue?
* What was your expected outcome?

Please try to be as detailed as possible in your report. All these details will help the
maintainers quickly fix issues.

## Enhancement Proposals

The Charmed HPC core developers may already know what they want to add to Charmed HPC,
but they are always open to new ideas and potential improvements. GitHub Discussions is
a good place for discussing open-ended questions that pertain to the entire Charmed HPC project, but more focused enhancement proposal discussions can start within an issue tracker.

Please note that not all proposals may be incorporated into Charmed HPC. Also, please
know that spamming the maintainers to incorporate something you want will not improve the likelihood of being implemented; it may result in you receiving a temporary ban.

## Guidelines and Resources

The following guidelines should be followed if you are writing code to be merged into any of the respositories within Charmed HPC. Some repositories will have additional guidelines; please read the corresponding CONTRIBUTING.md within the repository of interest.

### Documentation

* Any code contribution should be accompanied by a correspsonding documentation contribution to [Charmed HPC's documentation](https://github.com/charmed-hpc/docs).
  * If the code contribution does not require a documentation addition or change, please provide justification in the Pull Request.

### Conventional Commits 

* Follow [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/)

### Juju and charmed operators

* Adhere to the operator development best practices outlined in the [operator development styleguide](https://juju.is/docs/sdk/styleguide).

### Python

* Adhere to the Python code style guidelines outlined in [Python Enhancement Proposal 8](https://pep8.org/).

* Adhere to the Python docstring conventions outlined in
[Python Enhancement Proposal 257](https://www.python.org/dev/peps/pep-0257/).
  * *Docstrings must follow the
  [Google docstring format](https://github.com/google/styleguide/blob/gh-pages/pyguide.md#38-comments-and-docstrings)*.
license

### Useful Resources 

The following list provides a variety of resources of revelance to Charmed HPC that may be worth skimming prior to making a contribution.

-  The [Juju SDK](https://juju.is/docs/sdk)
-  The [Slurm workload managed documentation](https://slurm.schedmd.com/documentation.html)
-  The [Terraform documentation](https://developer.hashicorp.com/terraform/docs)
-  

## Pull Requests

Good pull requests &mdash; patches, improvements, new features &mdash;
are a huge help. Pull requests should remain focused and not contain commits not
related to what you are contributing.

__Ask first__ before embarking on any __significant__ pull request such as
implementing new features, refactoring methods, or incorporating new libraries;
otherwise, you risk spending a lot of time working on something that the Charmed HPC
core developers may not want to merge! For trivial changes,
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


7. Commit your changes in logical chunks to your topic branch.

   Our project follows the
   [Conventional Commits specification, version 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/).
   You can use Git's
   [interactive rebase](https://help.github.com/articles/about-git-rebase/) feature to
   tidy up your commits before pushing them to your origin branch.

8. Locally merge (or rebase) the upstream development branch into your topic branch:

   ```bash
   git pull [--rebase] upstream main
   ```

9. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

10. [Open a Pull Request](https://help.github.com/articles/about-pull-requests/)
    with a clear title and description against the `main` branch.

11. (Conditionally) Open a corresponding Pull Request for the documentation following the [charmed-hpc/docs CONTRIBUTING.md guidelines](https://github.com/charmed-hpc/docs/blob/main/CONTRIBUTING.md#pull-requests-and-contributing-process).

## Discussions

GitHub Discussions is a great place to connect with other Charmed HPC users to
discuss potential enhancements, ask questions, and resolve issues. Charmed HPC users
should remain respectful of each other. Discussion moderators reserve the right to
suspend discussions and/or delete posts that do not follow this rule.
