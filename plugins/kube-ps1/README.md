Kubernetes prompt for zsh
=========================

A Kubernetes (k8s) zsh prompt that displays the current cluster cluster
and the namespace.

Inspired by several tools used to simplify usage of kubectl

NOTE: If you are not using zsh, check out [kube-ps1](https://github.com/jonmosco/kube-ps1) designed for bash
as well as zsh.

## Requirements

The default prompt assumes you have the kubectl command line utility installed.  It
can be obtained here:

[Install and Set up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

If using this with OpenShift, the oc tool needs installed.  It can be obtained from here:

[OC Client Tools](https://www.openshift.org/download.html)

## Helper utilities

There are several great tools that make using kubectl very enjoyable.

[kubectx and kubenx](https://github.com/ahmetb/kubectx) are great for
fast switching between clusters and namespaces.

## Prompt Structure

The prompt layout is:

```
(<logo>|<cluster>:<namespace>)
```

Supported platforms:
* k8s - Kubernetes
* ocp - OpenShift

## Install

<<<<<<< HEAD
1. Clone this repository
2. Source the kube-ps1.zsh in your ~./.zshrc

ZSH:
```
source path/kube-ps1.sh
PROMPT='$(kube_ps1) '
=======
```shell
vim $HOME/.zshrc
```

Add kube-ps1 to the list of enabled plugins and enable it on the prompt:

```shell
plugins=(
  git
  kube-ps1
)

# After the "source Oh My Zsh" line
PROMPT=$PROMPT'$(kube_ps1) '
# Or in double quotes, don't forget to escape
PROMPT=$PROMPT"\$(kube_ps1) "
```

Note: The `PROMPT` example above was tested with the theme `robbyrussell`.

## Enabling / Disabling on the current shell

Sometimes the kubernetes information can be anoying, you can easily 
switch it on and off with the following commands:

```shell
kubeon
```

```shell
kubeoff
>>>>>>> origin/master
```

## Colors

<<<<<<< HEAD
The colors are of my opinion. Blue was used as the prefix to match the Kubernetes
color as closely as possible. Red was chosen as the cluster name to stand out, and cyan
for the namespace.  These can of course be changed.
=======
Blue was used as the prefix to match the Kubernetes color as closely as
possible. Red was chosen as the cluster name to stand out, and cyan
for the namespace. Check the customization section for changing them.
>>>>>>> origin/master

## Customization

The default settings can be overridden in ~/.zshrc

| Variable | Default | Meaning |
| :------- | :-----: | ------- |
| `KUBE_PS1_DEFAULT` | `true` | Default settings for the prompt |
| `KUBE_PS1_PREFIX` | `(` | Prompt opening character  |
| `KUBE_PS1_DEFAULT_LABEL` | `⎈ ` | Default prompt symbol |
| `KUBE_PS1_SEPERATOR` | `\|` | Separator between symbol and cluster name |
| `KUBE_PS1_PLATFORM` | `kubectl` | Cluster type and binary to use |
| `KUBE_PS1_DIVIDER` | `:` | Separator between cluster and namespace |
| `KUBE_PS1_SUFFIX` | `)` | Prompt closing character |
<<<<<<< HEAD
| `KUBE_PS1_DEFAULT_LABEL_IMG` | `false` | Use Kubernetes img as the label: ☸️  |
=======
| `KUBE_PS1_COLOR_SYMBOL` | `"%F{blue}"` | Custom color for the symbol |
| `KUBE_PS1_COLOR_CONTEXT` | `"%F{red}"` | Custom color for the context |
| `KUBE_PS1_COLOR_NS` | `"%F{cyan}"` | Custom color for the namespace |
| `KUBE_PS1_ENABLED` | `true` | Set to false to start disabled on any new shell, `kubeon`/`kubeoff` will flip this value on the current shell |
>>>>>>> origin/master

## Contributors

- Jared Yanovich
- Pedro Moranga
