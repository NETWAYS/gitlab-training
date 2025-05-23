# GitLab Training

This [training](https://www.netways.de/trainings/gitlab/) is designed
as a two days hands-on training introducing Git,
GitLab, Workflows, CI/CD and many best practices with GitLab and Git.

The training participants will get an in-depth insight into the Git basics,
configuration and "good" commits. They also learn about GitLab basics with
repository and user management and continue to practice Git version control
with real-life exercises.

Moving along from standalone environments, participants collaborate with
others and get an overview on different Git workflows. Solving conflicts,
rebasing, merging and even squasing commits also is practiced. Continuing with
practices, the training dives deep into continuous integration and
delivery (CI/CD) with GitLab, runners and DevOps production pipelines.

On top of that, the training provides more hints on GitLab usage (project
management, Web IDE, API, etc.), tools, IDEs and UIs
for working with Git and anything proven useful for daily best practice.

Target audience are developers and Linux administrators. Linux basics
and CLI/editor knowledge is required.

We have developed our training material based on years of experience in
development, professional services and training. To support our work,
please join the official training sessions and get your ticket at [NETWAYS](https://www.netways.de/trainings/gitlab/).

* [Handouts](https://github.com/NETWAYS/gitlab-training/releases)

## Provide your training

Requirements:

* Docker
* https://nws.netways.de GitLab instances for the trainer and participants

Start the presentation with the default settings:

```
./global/wizard.sh
[Enter]
[Enter]
```

More instructions [here](https://github.com/NETWAYS/training-global#using-docker-to-build-and-serve-the-slide-deck).

## Render mermaid.js

Many diagrams are rendered using [mermaid.js](https://mermaid.js.org/). The diagrams are stored in `*.mmd` files and are rendered using the mermaid-cli.

```
# Uses a containerized mermaid-cli to render all images
bash render-images.sh
```

To render a single image:

```
docker run -u `id -u`:`id -g` --rm -v $(pwd)/_images/mermaid:/data minlag/mermaid-cli -e png -i "/data/image-to-render.mmd"
```

### Environment

The training material focuses on https://nws.netways.de where every attendee
gets their own GitLab instance.

The [vm/](vm/) directory provides a fallback VM which can be exported
from Vagrant/VirtualBox and is provisioned onto the training notebook @NETWAYS.

# Contribution

Patches to fix mistakes or add optional content are always appreciated. If you want to see
changes on the default content of the training we are open for suggestions but keep in mind
that the training is intended for a two day hands-on training.

The material is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).
