# lua_parse_url

在openresty里没找到解析分拆url的方法，就尝试自己写了个获取域名及uri的方法.

```
local utils  = require "utils"
local url = "http://baidu.com/query?word=bens"

local domain, uri = utils.get_domain_url(url)
ngx.say(domain..uri)
```
