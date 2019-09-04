---
layout: post
title:  "Ruby on Rails 6.0 Released"
date:   "2019-09-04 08:49:20.449038"
categories: blog
excerpt: "Last month brought the release of Ruby on Rails 6.0.  Looking back on the past 12 months of Ruby / Ruby on Rails development it's clear that DHH was right in saying that 'Ruby isn't dying, it's maturing'"
cover_image: "https://www.vayu.com.au/assets/images/blog/yay-rails.png"
---
![Yay Rails](https://www.vayu.com.au/assets/images/blog/yay-rails.png "Yay Rails")

Last month brought the release of Ruby on Rails 6.0.  Looking back on the past 12 months of Ruby / Ruby on Rails development it's clear that DHH was right in saying that 'Ruby isn't dying, it's maturing'

From the wikipedia entry, Ruby on Rails, or Rails as it's better known, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, HTML, CSS and JavaScript for user interfacing. 

In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.[4] 

Rails 5 brought us lovely goodies like:

* Active Storage, a modern approach of uploading files straight to the cloud.
* Redis cache-store
* HTTP/2 Early Hints
* Credentials, a new and secure way to store secrets
	
Rails 6 brings some wonderful additions to the framework such as 

* Action Mailbox- a new way to serve to route incoming emails to controller-like mailboxes for processing in Rails
* Action Text- the Trix editor now is automatically in the framework
* Parallel Testing - allows you to parallelize your test using forks or threads (We've been doing this for years through parallel_tests)
* Action Cable Testing

These release notes cover only the major changes, so be sure to checkout out various bug fixes and changes and read through the change logs or list of commits on Github at the official Rails repo.

[https://en.wikipedia.org/wiki/Ruby_on_Rails](https://en.wikipedia.org/wiki/Ruby_on_Rails)

[https://edgeguides.rubyonrails.org/6_0_release_notes.html](https://edgeguides.rubyonrails.org/6_0_release_notes.html)

[https://github.com/rails/rails/commits/6-0-stable](https://github.com/rails/rails/commits/6-0-stable)


Ruby has gone through a heap of significant changes the past 12 months.  It shows no sign of going by the wayside however seems to be growing and evolving.  A new version of Ruby was released just in August 2019 and gave a heap of performance improvements.  JIT implementation of a JIT (Just-In-Time) compiler (heaps of future improvements to be made here) was released last December.  Ruby has improved performance up to 1.7x, apart from the 5–10% performance improvements from Ruby 2.5.0.  Not too shabby really.
