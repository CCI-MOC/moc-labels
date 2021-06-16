<!--
WARNING: README.md is generated from templates/README.md.in.
Changes made to README.md will be lost.
-->
# A Taxonomy for Issue and PR Labels

## Overview

Labels are organized into a series of [axes](#axes) indicated by a
prefix on the label. There are no "top-level" labels; every label
belongs to an axis.

For axes with an implied ordering (such as "priority"), colors are
allocated to labels along a gradient. For axes like "type" in which
labels represent distinct, unrelated values, colors can be chosen at
will.

## Automation

These labels are applied using a [GitHub action][apply-action] that
applies the labels to a list of repositories defined in
[config/repositories.txt][config]. The script runs daily, and whenever
the `master` branch is updated.

[apply-action]: .github/workflows/apply-labels.yml
[config]: config/repositories.txt

## Axes

> This documentation is generated automatically from the YAML
> files in the [`labels/`](labels/) directory.

### Single value axes

Issues and PRs may have no more than one label from the following
axes.

#### Priority

The `priority` axis describes the criticality of an issue.

- `priority/critical`: This task is immediately necessary
- `priority/high`: This task is needed as soon as possible
- `priority/medium`: This task should be scheduled.
- `priority/low`: The same as "no priority"


#### Status

The `status` axis describes the current condition of the issue or PR.

- `status/invalid`: This doesn't seem right
- `status/wontfix`: We will not work on this issue
- `status/blocked`: This has a dependency
- `status/accepted`: We have accepted item into a sprint


#### Type

The `type` axis describes in broad terms what sort of work is required by the issue or PR.

- `type/bug`: Something isn't working
- `type/enhancement`: This is a request for a new feature
- `type/documentation`: This task is mostly about documentation
- `type/research`: This task is primarily about information discovery
- `type/discussion`: We need to talk about this



### Multi value axes

Issues and PRs may have multiple labels from each of the following
axes.

#### Flag

The `flag` axis is used to bring attention to an issue or a pull request.

- `flag/good first issue`: This is a good place to start
- `flag/help wanted`: I need some help with this task
- `flag/needs description`: This task needs a description
- `flag/added post planning`: This item was added after sprint planning
- `flag/question`: This item requires additional details
- `flag/external`: This items is tracking an external issue.


#### Topic

The `topic` axis is for grouping tasks related to a certain subject. A task may have more than one `topic` label.

- `topic/monitoring`: This task has to do with monitoring
- `topic/devops`: This task furthers our devops related goals
- `topic/policy`: This task is about how we do things.
- `topic/mghpcc`: This task involves work at MGHPCC.
- `topic/website`: This task involves the MOC website.



## Resources

Thoughtful posts on taxonomy, color, etc:

- https://medium.com/@dave_lunny/sane-github-labels-c5d2e6004b63
- https://seantrane.com/posts/logical-colorful-github-labels-18230/
- https://robinpowered.com/blog/best-practice-system-for-organizing-and-tagging-github-issues

Good for color gradients:

- https://mdigi.tools/color-shades/
- https://noeldelgado.github.io/shadowlord/
