# This is a set of containers for
# bringing up a mariadb and wordpress
# instance that is fully configured and
# has the JWT for REST APIs plugin
# installed and enabled.

# The purpose for these are for easy
# testing of the APIs from provisioning
# platforms.

# After running the docker-compose up -d
# You shold be able to login at
# http://localhost/wp-admin with
# admin/54y6RxN7GfC7aes3

# This is built on the tier/shibboleth_sp
# container, but in this standalone use
# case keys are created so Shibboleth
# is healthy, but it is otherwise not
# configured. Use cases with include
# an SP will require further configuration
# of the wordpress_server container.
# The shibboleth plugin is included
# in the wordpress install and is activated
