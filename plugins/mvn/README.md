## Introduction

The [mvn plugin](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/mvn) provides many
[useful aliases](#aliases) as well as completion for the `mvn` command.

Enable it by adding `mvn` to the plugins array in your zshrc file:
```zsh
plugins=(... mvn)
```

## Aliases

| Alias                | Command                                         |
|:---------------------|:------------------------------------------------|
| `mvncie`             | `mvn clean install eclipse:eclipse`             |
| `mvnci`              | `mvn clean install`                             |
| `mvncist`            | `mvn clean install -DskipTests`                 |
| `mvncisto`           | `mvn clean install -DskipTests --offline`       |
| `mvne`               | `mvn eclipse:eclipse`                           |
| `mvncv`              | `mvn clean verify`                              |
| `mvnd`               | `mvn deploy`                                    |
| `mvnp`               | `mvn package`                                   |
| `mvnc`               | `mvn clean`                                     |
| `mvncom`             | `mvn compile`                                   |
| `mvnct`              | `mvn clean test`                                |
| `mvnt`               | `mvn test`                                      |
| `mvnag`              | `mvn archetype:generate`                        |
| `mvn-updates`        | `mvn versions:display-dependency-updates`       |
<<<<<<< HEAD
| `mvntc7`             | `mvn tomcat7:run`                               |
| `mvnjetty`           | `mvn jetty:run`                                 |
| `mvndt`              | `mvn dependency:tree`                           |
| `mvns`               | `mvn site`                                      |
| `mvnsrc`             | `mvn dependency:sources`                        |
| `mvndocs`            | `mvn dependency:resolve -Dclassifier=javadoc`   |
=======

## mvn-color

It's a function that wraps the mvn command to colorize it's output. You can use it in place
of the `mvn` command. For example: instead of `mvn test`, use `mvn-color test`.

Since [Maven 3.5.0](https://maven.apache.org/docs/3.5.0/release-notes.html) the mvn command
has colored output, so this function will be soon removed from the plugin.

### Known bugs

It has a bug where it will swallow mvn prompts for user input, _e.g._ when using
`archetype:generate`. See [#5052](https://github.com/ohmyzsh/ohmyzsh/issues/5052).
>>>>>>> origin/master
