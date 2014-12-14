game "IPRUG January 2014"

players "Team 1", "Team 2", "Team 3"

rewards 200, 400, 600, 800, 1_000

category "Core ruby"
answer <<END_ANSWER, <<END_QUESTION
Objects need to implement this operator to use the `Comparable` module.
END_ANSWER
What is the spaceship operator (`<=>`)?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This is currently the root of the Ruby class hierarchy.
END_ANSWER
What is `BasicObject`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This character can be placed in front of a letter to create a single-character string.
END_ANSWER
What is a question mark?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This is where methods defined on an individual object are held.
END_ANSWER
What is an eigenclass/metaclass/singleton class?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This method returns the name of the current method.
END_ANSWER
What is `Kernel#__method__`?
END_QUESTION

category "Standard library"
answer <<END_ANSWER, <<END_QUESTION
This library provides support for calculations on very large floating point numbers.
END_ANSWER
What is `BigDecimal`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This library replaced an older, similarly-named YAML parser in Ruby 1.9.
END_ANSWER
What is `Psych`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
The English module aliases this global variable to `$PID` or `$PROCESS_ID`.
END_ANSWER
What is `$$`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This method allows you to run an external command and access stdin and stdout (but not stderr).
END_ANSWER
What is `IO3.popen2`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This library provides trigonometric and transcendental functions for complex numbers.
END_ANSWER
What is `CMath`?
END_QUESTION

category "Rails"
answer <<END_ANSWER, <<END_QUESTION
This association is similar to `has_many_through`, but with no joining model.
END_ANSWER
What is `has_and_belongs-` `_to_many`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This ActiveSupport extension to `Object` is the opposite of `blank`?
END_ANSWER
What is `present?`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This is the primary HTTP method used when updating a restful resource.
END_ANSWER
What is PATCH?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This technique is used by the asset pipeline to ensure a file is reloaded if its contents have changed.
END_ANSWER
What is fingerprinting?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This form helper generates select options from a collection of arbitrary objects.
END_ANSWER
What is `options_from-` `_collection_for-` `_select`?
END_QUESTION

category "Gems"
answer <<END_ANSWER, <<END_QUESTION
Amongst other things, this option will cause bundle install to fail if `Gemfile.lock` is missing.
END_ANSWER
What is `--deployment`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
Pagination of ActiveRecord queries and Rails views were extracted to this gem.
END_ANSWER
What is `will_paginate`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This rspec matcher expects executing a block to cause an exception.
END_ANSWER
What is `raise_error`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This method can be used to programatically call a rake task, but is ignored if it's already been run.
END_ANSWER
What is `invoke`?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
According to ruby-toolbox, this is by far the most popular SOAP library.
END_ANSWER
What is Savon?
END_QUESTION

category "People"
answer <<END_ANSWER, <<END_QUESTION
This developer, also associated with jQuery and ember.js, joined the Rails core team when it merged with Merb.
END_ANSWER
Who is Yehuda Katz?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This pair created the infamous Rails Envy spoof ads, leading to a popular podcast.
END_ANSWER
Who are Jason Seiffer and Greg Pollack?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
A keen cyclist, she wrote Practical Object-Oriented Design in Ruby
END_ANSWER
Who is Sandi Metz?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
Another Rails core team member, he's also famous for his cat Gorby, and incessant Twitter puns.
END_ANSWER
Who is Aaron Patterson?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
A 2009 Ruby Hero from Australia, he organised the first UK Rails Camp.
END_ANSWER
Who is Pat Allen?
END_QUESTION

category "Off-topic"
answer <<END_ANSWER, <<END_QUESTION
This band had a Christmas no. 1 in 2009 with 'Killing in the Name' after an internet campaign to beat that year's XFactor winner.
END_ANSWER
Who are Rage Against the Machine?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
Items made from this substance are the traditional gift for a 5th Wedding Anniversary.
END_ANSWER
What is Wood?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This Shakespeare play opens with a storm and a shipwreck.
END_ANSWER
What is The Tempest?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
In 1963 this actor became the first black person to win the Best Actor Academy Award.
END_ANSWER
Who is Sidney Poitier?
END_QUESTION
answer <<END_ANSWER, <<END_QUESTION
This is the smallest bone in the human body.
END_ANSWER
What is the stirrup bone (or stapes?
END_QUESTION
