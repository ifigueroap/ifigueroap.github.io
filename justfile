default:
  just --list

# Jekyll Compose

dev:
  bundle exec jekyll serve --livereload --drafts

draft name:
  bundle exec jekyll draft "{{name}}"

publish path="":
  #!/usr/bin/env bash
  set -euo pipefail
  path="{{path}}"
  if [ -z "$path" ]; then
    path=$(find _drafts -name '*.md' | fzf --prompt='publish> ' --preview 'head -20 {}')
  fi
  bundle exec jekyll publish "$path"
