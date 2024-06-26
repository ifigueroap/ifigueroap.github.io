---
title: "Effective Aspects: A Typed Monadic Embedding of Pointcuts and Advice"
collection: publications_scopus
permalink: /publication/scopus/figueroaAl-taosd2014
year: 2014
date: 2014-01-01
venue: 'Transactions on Aspect-Oriented Software Development XI'
paperurl: 'https://link.springer.com/chapter/10.1007/978-3-642-55099-7_5'
author: Ismael Figueroa, Nicolas Tabareau, Éric Tanter
---

{{ page.author }}

## Abstract

Aspect-oriented programming (AOP) aims to enhance modularity and reusability in
software systems by offering an abstraction mechanism to deal with crosscutting
concerns. However, in most general-purpose aspect languages aspects have almost
unrestricted power, eventually conflicting with these goals. In this work we
present Effective Aspects: a novel approach to embed the pointcut/advice model
of AOP in a statically typed functional programming language like Haskell. Our
work extends EffectiveAdvice, by Oliveira, Schrijvers, and Cook; which lacks
quantification, and explores how to exploit the monadic setting in the full
pointcut/advice model. Type soundness is guaranteed by exploiting the
underlying type system, in particular phantom types and a new anti-unification
type class. Aspects are first-class, can be deployed dynamically, and the
pointcut language is extensible, therefore combining the flexibility of
dynamically typed aspect languages with the guarantees of a static type system.
Monads enables us to directly reason about computational effects both in
aspects and base programs using traditional monadic techniques. Using this we
extend Aldrich’s notion of Open Modules with effects, and also with protected
pointcut interfaces to external advising. These restrictions are enforced
statically using the type system. Also, we adapt the techniques of
EffectiveAdvice to reason about and enforce control flow properties. Moreover,
we show how to control effect interference using the parametricity-based
approach of EffectiveAdvice. However, this approach falls short when dealing
with interference between multiple aspects. We propose a different approach
using monad views, a recently developed technique for handling the monad stack.
Finally, we exploit the properties of our monadic weaver to enable the modular
construction of new semantics for aspect scoping and weaving. These semantics
also benefit fully from the monadic reasoning mechanisms present in the
language. This work brings type-based reasoning about effects for the first
time in the pointcut/advice model, in a framework that is both expressive and
extensible; thus allowing development of robust aspect-oriented systems as well
as being a useful research tool for experimenting with new aspect semantics.

>Download the paper here: [{{ page.paperurl }}]({{ page.paperurl}})
{:.prompt-info}
