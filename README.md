mysql2 streaming vs net_write_timeout
-------------------------------------

Demonstrate an issue where streaming silently abandons records behind.

Checkout the repo and adjust your mysql credentials in mysql2_streaming.rb.

```
bundle install
ruby mysql2_streaming.rb
```
