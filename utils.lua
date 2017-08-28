local _utils = {}


-- 获取 URL 中的域名及URI
-- :param string url: 完整的 URL
-- :rtype string, string
--   input: http://www.baidu.com/bj/query?word=bmw&ts=-24
--   output: www.baidu.com , /bj/query
function _utils.get_domain_uri(url)
	local domain_name
	local last
	local uri
	local cut_flat

    if string.sub(url, 1, 7) == "http://" then
        url = string.sub(url, 8)
    elseif string.sub(url, 1, 8) == "https://" then
        url = string.sub(url, 9)
    end

    last = string.find(url, "/")
    -- 如果该 url 没有 / 则直接返回
    if last == nil then
        domain_name = url
    -- 从开头一直切割遇到的第一个 /
    else
        domain_name = string.sub(url, 1, last - 1)
    end

	uri = string.sub(url, last, string.len(url))
	cut_flat = string.find(uri, "?")
	-- 去除uri中的args参数
	if cut_flat ~= nil then
		uri = string.sub(uri, 1, cut_flat - 1)
	end

	return domain_name, uri
end

return _utils
