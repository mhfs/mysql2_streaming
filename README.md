mysql2 streaming vs net_write_timeout
-------------------------------------

Demonstrates an issue where streaming silently abandons records behind.

Be sure to set `net_write_timeout = 2` in your mysql settings under the
`[mysqld]` section to simulate this problem.

Checkout the repo and adjust your mysql credentials in mysql2_streaming.rb.

```
bundle install
ruby mysql2_streaming.rb
```
