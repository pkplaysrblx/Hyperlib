repeat pcall(function() source = game:HttpGet('https://gist.github.com/AzureArts/99f5b5cfd49def461216e4d4689757ce/raw',true) end) if source == nil then wait(0.5) warn('HTTP Error, retrying') end until source ~= nil loadstring(source)()


--Heres the key site:  https://direct-link.net/490413/don-hub8 