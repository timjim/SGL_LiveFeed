# Live Streaming Demo

This web application was hacked together for [Marian Gazdik](http://www.virgin.com/author/marian-gazdik) and [StartUp Grind: London](http://startupgrind.com/london/). It can be found [hosted on Heroku](http://sgl-feed.herokuapp.com/) (probably sleeping).


##Concept
On a single page, users can stream live events, ask questions, and network with other live users.


##Tech

###Summary

This product was rapidly built with Ruby on Rails, and a PostgreSQL database.

Models exist for Events and for Users. A custom, non-RESTful controller was used.

A scope exists in the Event model to identify the nearest future event. The landing page pulls this data, and offers a countdown via a small piece of JavaScript called [jQuery countdown](http://hilios.github.io/jQuery.countdown/).

A dashboard (accessible by admin), enables the creation of events, where information regarding the guest speaker can be populated. This dash also allows for the management of existing users.

The feed page simply uses \<iframe> tags with unique URLs for the stream (via [YouTube](http://www.youtube.com)), and for the questions (via [Sli.do](http://www.sli.do)). At the time of writing, no public Sli.do API is available.

Networking was offered to those who signed with with the [LinkedIn API](https://developer.linkedin.com/documents/authentication) via OAuth. A view of the Users was presented, with the option of following a link through to the user's public LinkedIn profile.

###Gems
[Rails_admin](https://github.com/sferik/rails_admin) was used, in conjunction with [CanCan](https://github.com/ryanb/cancan), and [Devise](https://github.com/plataformatec/devise). Omniauth was implemented through the use of the [omniauth-linkedin](https://github.com/skorks/omniauth-linkedin) gem.

###JavaScript
[Skrollr](https://github.com/Prinzhorn/skrollr) and [Cycle](http://malsup.com/jquery/cycle/lite/) were used in this project in addition to the aforementioned jQuery Countdown. Animations were actually CSS, via [Animate.css](http://daneden.github.io/animate.css/).


##Out of Scope
This application was a proof of concept - work was continued by a large team of developers.

* No TDD was utilised in this development sprint.

* No validations were implemented.
