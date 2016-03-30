# Docker-kerberos
A docker image that creates the simplest Kerberos KDC and a docker image that is a kerberos client.

# What you get

 - A KDC for your desired realm.
 - The `kadmin/admin` principal with every permission.
 - The `noPermissions` principal with no permissions. Useful for testing applications that use kerberos principals.
 - The function `kadminCommand` which performs kadmin commands using the `kadmin/admin` principal.

## Running
Just run `docker-compose up` on the root directory of this repo.

## How to customize (eg. change the REALM)

 1. Change the file `kerberos.env`. This way the properties will be shared between the kdc and the kerberos client.
 1. Define environment variables in `docker-compose.yml`. You will need to define them for each service that uses kerberos.

## Sugested usage of this repo
This repository has designed to bootstrap the creation of a KDC for projects that need a Kerberos installation to perform tests.

For example: you have a project that uses kerberos principals and you need to test it against a working Kerberos installation.
You will need to create in your project repository the necessary files to setup a Kerberos. To bootstrap that process you
can simply copy this repository files to your project and them modify them so that you can test your
application inside the kerberos-client container.

If you want to keep up with the possible changes of this repo, you can use:
 - [git submodules](https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407#.a2hp3b6wa)
 - [git fake submodules](http://debuggable.com/posts/git-fake-submodules:4b563ee4-f3cc-4061-967e-0e48cbdd56cb)
 - [git subtrees](https://medium.com/@porteneuve/mastering-git-subtrees-943d29a798ec#.zcxs92mvl)

## License
docker-kerberos is open source and available under the [MIT license](LICENSE).
