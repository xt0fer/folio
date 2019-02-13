# folio
folio - personal/family info organizer, based on life events.

* a personal/family archive of important iems
* Data is organized into categories of People, Places and Things
* Common life organizational categories like Taxes, Money, Insurance, etc.
* User can add other family members to the archive
* Protect your privacy: store your important personal business information in asecure archive

## Folios - the client

Folios is written in Flutter (see google flutter) and communicates to the back end thru a secure gRPC format.

## server

the server is written in Go, uses gRPC for its API and uses a SQLite DB as its datastore.