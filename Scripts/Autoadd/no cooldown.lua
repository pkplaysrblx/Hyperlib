local cooldown; cooldown = hookfunction(wait, function(v) v = 0; return cooldown(v); end);