task :editorconfig=> [] do
  sh 'find . -type f -name Thumbs.db -prune -o -type f -name .DS_Store -prune -o -type d -name .git -prune -o -type f -name .gitmodules -prune -o -type d -name .hg -prune -o -type d -name .svn -prune -o -type d -name tmp -prune -o -type d -name bin -prune -o -type d -name target -prune -o -name "*.app*" -prune -o -type d -name node_modules -prune -o -type d -name bower_components -prune -o -type f -name "*[-.]min.js" -prune -o -type d -name "*.dSYM" -prune -o -type f -name "*.scpt" -prune -o -type d -name "*.xcodeproj" -prune -o -type d -name .vagrant -prune -o -type f -name .exe -prune -o -type f -name "*.o" -prune -o -type f -name "*.pyc" -prune -o -type f -name "*.hi" -prune -o -type f -name "*.beam" -prune -o -type f -name "*.png" -prune -o -type f -name "*.gif" -prune -o -type f -name "*.jp*g" -prune -o -type f -name "*.ico" -prune -o -type f -name "*.ttf" -prune -o -type f -name "*.zip" -prune -o -type f -name "*.jar" -prune -o -type f -name "*.dot" -prune -o -type f -name "*.pdf" -prune -o -type f -name "*.wav" -prune -o -type f -name "*.mp[34]" -prune -o -type f -name "*.svg" -prune -o -type f -name "*.flip" -prune -o -type f -name "*.class" -prune -o -type f -name "*.cmi" -prune -o -type f -name "*.cmo" -prune -o -type f -name "*.gem" -prune -o -type f -name "*.jad" -prune -o -type d -name .idea -prune -o -type f -name "*.iml" -prune -o -type f -name "*.log" -prune -o -type f -name "*" -exec node_modules/editorconfig-tools/bin/index.js check {} \\;'
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

task :shlint => [] do
  sh 'find . \( -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs shlint'
end

task :checkbashisms => [] do
  sh 'find . \( -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs checkbashisms -n -p'
end

task :shellcheck => [] do
  sh 'find . \( -wholename \'*/node_modules*\' -o -name \'*.bat\' \) -prune -o -type f \( -name \'*.sh\' -o -name \'*.bashrc*\' -o -name \'.*profile*\' -o -name \'*.envrc*\' \) -print | xargs shellcheck'
end

task :lint => [
  :editorconfig,
  :astyle,
  :gofmt,
  :shlint,
  :checkbashisms,
  :shellcheck
] do
end

task :clean => [
  :clean_astyle
] do
end
