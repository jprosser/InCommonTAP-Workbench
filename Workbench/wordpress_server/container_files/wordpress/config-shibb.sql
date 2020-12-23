update wp_options set option_value = 'allow' where option_name = 'shibboleth_auto_combine_accounts';
update wp_options set option_value = 'https://__CSPHOSTNAME__/wordpressSSO/Shibboleth.sso/Login' where option_name = 'shibboleth_login_url';
update wp_options set option_value = 'https://__CSPHOSTNAME__/wordpressSSO/Shibboleth.sso/Logout' where option_name = 'shibboleth_logout_url';
update wp_options set option_value = 'a:6:{s:8:"username";a:1:{s:4:"name";s:3:"uid";}s:10:"first_name";a:1:{s:4:"name";s:9:"givenName";}s:9:"last_name";a:1:{s:4:"name";s:2:"sn";}s:8:"nickname";a:1:{s:4:"name";s:4:"eppn";}s:12:"display_name";a:1:{s:4:"name";s:11:"displayName";}s:5:"email";a:1:{s:4:"name";s:4:"mail";}}' where option_name = 'shibboleth_headers';
