task :editorconfig=> [] do
  sh 'find . \\( -wholename \'*/bin/*\' -o -wholename \'*/ts/*.js\' -o -wholename \'*/dash/lib/*\' -o -wholename \'*/ash/lib/*\' -o -name \'*.bc\' -o -name \'*.aux\' -o -name \'*.jad\' -o -name \'*.m\' -o -name \'*.snu\' -o -name \'*.txt\' -o -name \'*.md\' -o -name \'*.rkt\' -o -name \'*.clj\' -o -name \'*.lsp\' -o -name .yaws -o -name \'*.pdf\' -o -name \'*.ps\' -o -wholename \'*/.idea/*\' -o -name \'*.iml\' -o -name \'*.ser\' -o -name \'*.[ps]k\' -o -name \'*.flip\' -o -name \'*.db\' -o -name \'*.log\' -o -wholename \'*/bower_components/*\' -o -wholename \'*/vendor/*\' -o -wholename \'*/*.xcodeproj/*\' -o -wholename \'*/*.dSYM/*\' -o -wholename \'*/build/*\' -o -wholename \'*/*.app/*\' -o -name \'*.scpt\' -o -wholename \'*/perl/Makefile\' -o -wholename \'*/CMakeFiles/*\' -o -name \'*.cmake\' -o -name \'*.lock\' -o -name \'*.cm[io]\' -o -name \'*.hi\' -o -name \'*.swiftdoc\' -o -name \'*.swiftmodule\' -o -name \'*.rlib\' -o -name \'*.dylib\' -o -name \'*.so\' -o -name \'*.o\' -o -name \'*.beam\' -o -name \'*.dump\' -o -name \'*.pyc\' -o -name \'*.jar\' -o -name \'*.class\' -o -name \'*.bin\' -o -wholename \'*/tmp/*\' -o -name .gitmodules -o -wholename \'*/.git/*\' -o -wholename \'*/node_modules/*\' -o -wholename \'*/.cabal/*\' -o -name \'*.ttf\' -o -name \'*.plist\' -o -name \'*.dot\' -o -name \'*.wav\' -o -name \'*.jpeg\' -o -name \'*.jpg\' -o -name \'*.ico\' -o -name \'*.png\' -o -name \'*.gif\' -o -name .DS_Store -o -name Thumbs.db \\) -prune -o -type f -print | pargs -n 100 node_modules/.bin/editorconfig-tools check'
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
