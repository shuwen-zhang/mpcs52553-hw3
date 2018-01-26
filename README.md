# Homework #3

5 points.  Due before the next class.

This homework challenges your ability to combine
everything we've learned so far into a useful web application:
HTML, Ruby, the RCAV recipe for creating pages in Rails, and
using a model class as a source of data.

To see a live solution to this assignment, visit:
https://mpcs52553-divvy.herokuapp.com/


### Setup & Turn-in

1. Get the code for this assignment by downloading a ZIP file of this repository.
2. Unzip into a folder on your computer.
3. (Optional) Rename the folder to `hw3`.
4. Turn that folder into a local git repository.
5. From your command prompt: `bundle install`
5. Fulfill the requirements below.  Commit your changes often to save your work.
6. Create a new, remote *private* repository named `mpcs52553-hw3` inside of your GitHub or BitBucket account.
7. Push your local repository to the remote repository.
8. Add me as a collaborator (read+write): `jeffcohen` (GitHub and BitBucket)
9. Push commits as often as you want.  I will only clone your repository when the assignment is due.



### Requirements

As a site visitor, I want to:

1. (2 pts) See a list of Divvy stations
2. (3 pts) Click on a station to see station details

You must support these three URL paths:

* `/stations`: Show the list of all Divvy stations
* `/stations/{station-id}`: Show the details for a given station
* Home page: same as `/stations`

If you need more URLs, you are free to invent them as you see fit.

### Notes

Go to https://mpcs52553-divvy.herokuapp.com to see a live example. Your app does not need to visually look the same, but you must support the same URLs and the user should be able to navigate their way around in a similar fashion.  


### Hints

* You do not need to use the Divvy API because I have written
  a model class for you that provides a list of all Divvy stations.
* To get a list of all Divvy stations, you can call `DivvyStation.all`.
* You can use querystring parameters or dynamic URL segments to
  help you pass information from one page to another.
* The `params[]` hash will provides the dynamic path values
  for every request.  
* Watch your server log!  Especially if you need a reminder
  on how the `params[]` hash works.
* The Bootstrap CSS framework is already included for you, so that
  you will have a nice default font and color scheme.  
  If you're curious about how that is done, examine the
  "application layout file" at `app/views/layouts/application.html.erb`.  
  We will learn more about this next week.
* Don't forget: `<%= obj.class %>` `<%= obj.inspect %>` can help you
  understand your data.
* The `params[]` hash always contains `String` values.  You can convert a
  string to an integer with `.to_i`, and you can convert an integer to a
  string with `.to_s`.
* I've also provided a view helper, `<%= show_map(lat, lng) %>` that will
  show a Google Map for the given latitude and longitude.
* Experiment with the `<table>` element in HTML.  Use the resources
  provided during week 1 to learn more (w3schools.com, etc.)
* Ruby arrays have lots of useful methods for searching and sorting!  
  Part of this homework is intended to inspire you to learn how to search
  for what you need in the Ruby online documentation and use it.
