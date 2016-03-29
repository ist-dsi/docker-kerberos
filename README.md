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
You have a project that uses kerberos principals. In order to test your project you will need a working kerberos installation.
Otherwise you run the risk of possibly performing destructive modifications to your production kerberos.
This repo allows you to create a kerberos installation without any fuss. The best approach is to use this repo as a [fake
submodule](http://debuggable.com/posts/git-fake-submodules:4b563ee4-f3cc-4061-967e-0e48cbdd56cb) on your project as follows:

 1. `cd yourProjectRepo`
 2. `git clone https://github.com/ist-dsi/docker-kerberos`
 3. `git add docker-kerberos/` do not forget the trailing "/" (slash)
 4. Make the necessary modifications to the kerberos-client files and the `docker-compose.yml` in order to
    be able to test your application.
 5. Then from your project repo and NOT from the docker-kerberos repo commit the changed files. (You can verify that the
    files were only commited to your repo and not the docker-kerberos repo by navigating to the docker-kerberos repo
    a doing a `git status`)
 6. If this repo changes all you need to do is:
   1. `cd yourProjectRepo/docker-kerberos`
   2. `git stash`
   3. `git pull`
   4. `git stash pop`
   5. `cd ..`
   6. `git add -A`
   7. `git commit`

## License
docker-kerberos is open source and available under the [MIT license](LICENSE).
