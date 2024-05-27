default:
  just --list

dev:
  bundle exec jekyll serve --incremental

draft name:
  bundle exec jekyll draft "{{name}}"

publish path:
  bundle exec jekyll publish {{path}}
