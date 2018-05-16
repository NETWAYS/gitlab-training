# GitLab Training

This training is designed as a two days hands-on training introducing Git,
GitLab, Workflows, CI/CD and many best practices.

The training participants will get an in-depth insight into the Git basics,
configuration and "good" commits. They also learn about GitLab basics with
repository and user management and continue to practice Git version control
with real-life exercises.

Moving along from standalone environments, participants collaborate with
others and get an overview on different Git workflows. Continuing with
practices, the training dives deep into continuous integration and
delivery (CI/CD) with GitLab, runners and DevOps production pipelines.

On top of that, the training provides more hints on GitLab usage, tools
for working with Git and anything proven useful for daily best practice.

Target audience are developers and Linux administrators.

We have developed our training material based on years of experience in
professional service and training. To support our work, please join the official
training sessions and get your ticket at [NETWAYS](https://www.netways.de/en/trainings/home/).

## Online Material

In addition to the sources you can find the rendered material on
[netways.github.io](https://netways.github.io/gitlab-training)

* [Presentation](https://netways.github.io/gitlab-training)
* [Handouts](https://github.com/NETWAYS/gitlab-training/releases)

## Provide your training

Requirements:

* Docker
* https://nws.netways.de GitLab instances for the trainer and participants

### Start Showoff in Docker

```
./start.sh
```

### Print Static Content

For GitHub.

```
./print.sh
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

The rendered content will be updated at least if we do a newer version of the material which
will also be tagged on git.

Material is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-nc-sa/4.0/).


