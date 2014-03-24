# Dev Notes

## Does the entry need to be exported?

- Was it modified since the last run time of the app?

Day One does not store file modified time. The simplest way to collect that data
is via Ruby's `File#mtime` method. However, I envision a situation in which a
new box is setup or a file is synced across computers and `File#mtime` is not
the last modified time of the entry. Probably the best way to get this data
reliably is via Dropbox API. That does limit the app to journals that are synced
via Dropbox but that's okay by me.

An alternative would be to persist the content of the entries, then compare to
see if there are diffs, but I'd rather not take that approach.

