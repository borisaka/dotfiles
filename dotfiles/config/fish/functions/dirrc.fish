function dirrc
end

function bundlerc
  bundle install
  alias b="bundle"
  alias be="bundle exec $argv"
end

function rvmrc
  rvm use 2.4.1@(echo (string split / (pwd) )[-1]) 
end
