# Docker-kerberos
This images creates the simplest Kerberos KDC and Kadmin.

# What you get
A KDC for your desired realm.
The `kadmin/admin` principal with every permission.
The `noPermissions` principal with no permissions. Useful for testing applications that use kerberos principals.
The function `kadminCommand` which performs kadmin commands using the `kadmin/admin` principal.

## Running
Just run `docker-compose up` on the root directory of this repo.

## License
docker-kerberos is open source and available under the [MIT license](LICENSE).
