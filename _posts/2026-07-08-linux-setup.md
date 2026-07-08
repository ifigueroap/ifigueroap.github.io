---
layout: post
title: Working with Linux
tags:
- linux
- wsl
- omarchy
date: 2026-07-08 11:19 -0400
---
Since several years I've been working mostly using Windows (10 and 11)
with the Windows Subsystem for Linux
([WSL](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)). To
me, it works like a charm with the caveat that it usually requires a
more powerful computer for keeping pace. Sadly, Windows is quite
resource-hungry. This is not an issue on my desktop computer, as I
inadvertently had *very* good timing and managed to get 64GB of DDR5
memory about a year before the [market
crash](https://www.rescuetime.com/focus/url/https%3A%2F%2Fnews.ycombinator.com%2Fitem%3Fid%3D48383241).

In my notebook the situation is worse: it has only 16GB of RAM memory,
and it definitely cannot run both Windows and WSL (at least not if I
want to do _anything_ else). Hence, after looking for efficient Linux
distributions, I came upon [Omarchy](https://omarchy.org/):
_"Beautiful, Modern & Opinionated Linux by DHH"_. It is an Arch-based
distribution that is really well-designed and that it efficiently
manages the system resources.

## Modern tools

Some modern tools that I really like so far:

* `just` command runner.
* `jq`: query JSON documents.
* `tldr`: short and practical command documentation.
* `fzf`: fuzzy string search, used to find files interactively rather than by remembering their names.
* `zoxide`: an alternative for `cd`, it automatically learns your visited paths and provide ways to quickly jump to them.
* `ripgrep`: a modern alternative to `grep`.
* `fd`: a modern alternative to `find`.

Hopefully in another post I can comment more on these tools!
