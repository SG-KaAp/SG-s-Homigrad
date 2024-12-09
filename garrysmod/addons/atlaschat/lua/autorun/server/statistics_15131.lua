hook.Add('Initialize','CH_S_ed88a21ea82e03ed6ef6e2d7c7e98631', function()
	http.Post('http://coderhire.com/api/script-statistics/usage/14753/378/ed88a21ea82e03ed6ef6e2d7c7e98631', {
		port = GetConVarString('hostport'),
		hostname = GetHostName()
	})
end)