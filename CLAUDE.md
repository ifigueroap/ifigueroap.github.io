# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Personal website/blog of Ismael Figueroa, served at **https://ifigueroap.cl** via GitHub Pages. It is a fork of the **full Chirpy Jekyll theme v7.0.1** (`cotes2020/jekyll-theme-chirpy`) — not the chirpy-starter — so all theme code (`_layouts/`, `_includes/`, `_sass/`, `_javascript/`) lives in-repo and is editable. The README.md is the upstream theme's, not documentation for this site.

## Environment setup

- Ruby is pinned by `.ruby-version` (3.3.1) and managed with **mise** (not rvm/rbenv). In non-interactive shells, prefix Ruby commands with `mise exec --` (the mise PATH hook only fires at interactive prompts).
- After a fresh clone: `git submodule update --init` — `assets/lib` is the chirpy-static-assets submodule, required because `assets.self_host.enabled: true` in `_config.yml`.
- `bundle install` for gems. `Gemfile.lock` is gitignored by design.

## Commands

```bash
just dev                        # local server: bundle exec jekyll serve --incremental
just draft "Title"              # create _drafts/title.md (jekyll-compose)
just publish _drafts/title.md   # move to _posts/ with date stamped

# Full CI-equivalent check (run before pushing):
JEKYLL_ENV=production mise exec -- bundle exec jekyll build -d _site
mise exec -- bundle exec htmlproofer _site --disable-external \
  --ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"
```

## Deployment

Push to `master` → `.github/workflows/pages-deploy.yml` builds with Ruby 3.3, runs htmlproofer, and deploys through GitHub Actions Pages (`actions/deploy-pages`). The repo's Pages source must stay set to "GitHub Actions". The custom domain comes from the `CNAME` file, which Jekyll copies into `_site` automatically — no DNS or Pages settings changes are needed for content updates.

**htmlproofer gates the deploy**: a broken internal link, image, or script reference in any generated page fails the build.

## Architecture notes

- **Generated assets are committed**, so CI needs no Node step: `assets/js/dist/*.min.js` (built by rollup from `_javascript/`) and `_sass/dist/bootstrap.css` (built by purgecss from the bootstrap npm package). Only rebuild them (`npm install && npm run build`) if you change `_javascript/` or use new Bootstrap classes in layouts/includes; otherwise never touch them.
- **Posts**: `_posts/YYYY-MM-DD-slug.md`, permalink `/posts/:title/`. Front matter defaults in `_config.yml` already apply `layout: post`, comments, and TOC — a post only needs `title`, `date`, and optional lowercase `tags:`. `pin: true` floats a post above the reverse-chronological list on the home page.
- **Collections**: `_publications_wos/` and `_publications_scopus/` hold publication pages (a `publications_others` collection is configured but has no directory yet); `_tabs/` defines the sidebar nav pages, ordered by `order` in front matter.
- `_config.yml` sets `url: "https://ifigueroap.cl"` — required for absolute URLs in the sitemap, feed, and SEO tags; do not blank it.
