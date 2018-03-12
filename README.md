# Guitar Tracker v1.0

## Deployed sites:

https://jal90.github.io/guitar-tracker/
http://guitartracker.herokuapp.com/

#### Technologies used (server):

* Ruby/Rails
* SQL/PSQL

#### This is a work in progress. Additions to be implemented:

* Increase validation. A lot of data validation was handled on the client. This seems fine, as in normal use there's no way to submit any invalid information. However, from a security perspective it seems like all validation should be handled on both the client and the server.

#### ERD:
It's silly, but here it is: https://imgur.com/a/KhFKO

A user has many guitars, and guitars belong to users. Users also have ownership of guitars, for authentication purposes.

#### Development:

Development started with the backend. Using Ruby/Rails, I set up a database with users and guitars in a one-to-many relationship. Guitars are owned by users, so no action can be completed without authentication. Rails allowed this setup to be a breeze, though ownership code came with some hiccups, as I wasn't well acquainted with it.

The majority of my time was spent developing the client, and that process can be read on the client's README on GitHub.
