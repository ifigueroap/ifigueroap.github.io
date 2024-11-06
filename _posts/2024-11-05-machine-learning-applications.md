---
layout: post
title: Machine learning applications
tags:
- machine learning
- rapid development
date: 2024-11-05 23:06 -0300
---
Recently, I started working on supporting a state-funded startup that aims to
leverage large language models (LLMs) in order to assess qualitative feedback
from participants in an organization, with the goal of classifying each
response, as well as generating a final report with actionable feedback and
tool recommendations. This is a really cool project!

However, the time and scope that we can dedicate to this project is quite
bounded---due to our client's budget constraints. Although we would like to
design a nice user journey, and implement a tailored application, we simply
don't have the resources. Fortunately, I found that there exist two Python
libraries for rapid development of "machine learning applications":
[Streamlit](https://streamlit.io/), and [Gradio](https://www.gradio.app/).
Overall, both seem capable of supporting a user flow where the application
interacts with an LLM, as well as with a custom backend application.

Let us see how this turns out!
