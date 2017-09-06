task :editorconfig=> [] do
  sh 'flcl . | xargs -n 100 editorconfig-cli check'
end

task :astyle_apply => [] do
  begin
    sh 'find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[ch]" -exec astyle {} \\; | grep -v Unchanged'
  rescue
  end
end

task :astyle => [] do
  begin
    sh 'find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[ch]" -exec astyle --dry-run {} \\; | grep -v Unchanged'
  rescue
  end
end

task :clean_astyle => [] do
  sh 'find . -type f -name "*.orig" -exec rm {} \\;'
end

task :gofmt => [] do
  sh 'gofmt -s -w .'
end

task :bashate => [] do
  sh 'find . \( -wholename \'*/.git/*\' -o -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -wholename \'*/hooks/*\' -o -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs bashate'
end

task :shlint => [] do
  sh 'find . \( -wholename \'*/.git/*\' -o -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -wholename \'*/hooks/*\' -o -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs shlint'
end

task :checkbashisms => [] do
  sh 'find . \( -wholename \'*/.git/*\' -o -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -wholename \'*/hooks/*\' -o -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs checkbashisms -n -p'
end

task :shellcheck => [] do
  sh 'find . \( -wholename \'*/.git/*\' -o -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -wholename \'*/hooks/*\' -o -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs shellcheck'
end

task :funk => [] do
  sh 'funk .'
end

task :lint => [
  :editorconfig,
  :astyle,
  :gofmt,
  :bashate,
  :shlint,
  :checkbashisms,
  :shellcheck,
  :funk
] do
end

task :clean => [
  :clean_astyle
] do
end
