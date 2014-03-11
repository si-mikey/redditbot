redditbot
=========

A bot written in ruby with cucumber with various adapters to interact with Reddit.com
This bot uses [rockstack](http://rockstack.org) as its' managed language runtime


Install 
=======

    rock build (installs dependent gems)
    
    rock install (downloads the chrome driver)



Run
===

    rock redditbot (runs the .features files in features/)


TODO:
====
1. Add Rake tasks for decoupling from rock
2. Add downvoting for specific posts
3. Add commenting for specific posts 
4. Add running specific features and scenarios 
