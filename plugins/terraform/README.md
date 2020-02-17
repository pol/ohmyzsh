## atom

Plugin for Terraform, a tool from Hashicorp for managing infrastructure safely and efficiently.

### Requirements

 * [Terraform](https://terraform.io/)

### Usage

To use it, add `terraform` to the plugins array of your `~/.zshrc` file:

```shell
plugins=(... terraform)
```

 * Type `terraform` into your prompt and hit `TAB` to see available completion options

### Expanding ZSH prompt with current Terraform workspace name

If you want to get current Terraform workspace name in your ZSH prompt open 
your .zsh-theme file and in a choosen place insert:

```shell
PROMPT=$'%{$fg[white]%}$(tf_prompt_info)%{$reset_color%} '
```
