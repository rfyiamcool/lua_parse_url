# lua_parse_url

在openresty里没找到如何解析分拆url，就尝试自己写了个小东西.

```
local utils  = require "utils"
local url = "http://baidu.com/query?word=bens"

utils.get_domain_url(url)
```
