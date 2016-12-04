task :editorconfig=> [] do
  sh 'find . \\( -wholename \'*/bin/*\' -o -name \'*.clj\' -o -wholename \'*/vendor/*\' -o -wholename \'*/perl/Makefile\' -o -wholename \'*/CMakeFiles/*\' -o -name \'*.cmake\' -o -name \'*.lock\' -o -name \'*.cm[io]\' -o -name \'*.hi\' -o -name \'*.o\' -o -name \'*.beam\' -o -name \'*.dump\' -o -name \'*.pyc\' -o -name \'*.jar\' -o -name \'*.class\' -o -name \'*.bin\' -o -wholename \'*/tmp/*\' -o -name .gitmodules -o -wholename \'*/.git/*\' -o -wholename \'*/node_modules/*\' -o -wholename \'*/.cabal/*\' -o -name \'*.ttf\' -o -name \'*.plist\' -o -name .DS_Store -o -name Thumbs.db \\) -prune -o -type f -print | xargs node_modules/.bin/editorconfig-tools check'
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

task :lint => [
  :editorconfig,
  :astyle,
  :gofmt,
  :bashate,
  :shlint,
  :checkbashisms,
  :shellcheck
] do
end

task :clean => [
  :clean_astyle
] do
end
