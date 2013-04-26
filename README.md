mysql2 streaming vs net_write_timeout
-------------------------------------

Demonstrates an issue where streaming silently abandons records behind.

Checkout the repo and adjust your mysql credentials in mysql2_streaming.rb.

The first command-line argument is used to set the session 'net_write_timeout'.
This value could be set to a low value in your global mysql.conf, causing the
issue to manifest unexpectedly in your code.

```
bundle install
ruby mysql2_streaming.rb 10 # Works
ruby mysql2_streaming.rb 1  # Fails
```
