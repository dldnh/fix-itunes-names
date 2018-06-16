# fix-itunes-names

When Amazon announced they were retiring their Music Storage Subscriptions, I decided to download all of my music.

This was troublesome in a number of ways. The metadata was pretty well screwed up, so there would be songs without an artist name or album name. So I ended up downloading just one album at a time, so I would know which album was which. Yeah, total PITA.

But once that was done, I found I had a number of songs with names like 'dd-tt- Title of the Song' where dd is the disc number and tt is the track number. And thankfully so, since some of these tracks didn't have the disc or track number in the metadata.

So what I've done is made this little AppleScript (called `Fix_iTunes_names.scpt`) that will go through all of the songs and rename them from 'dd-tt- Title of the Song' to just 'Title of the Song' but ONLY IF dd matches the disc number and tt matches the track number. So totally safe!

Why not have a script that changes the disc number and track number in cases where those are blank? I guess that will be this repo'd first issue. Should be pretty easy.

You don't have to buy me a beer or anything, but if you want to, feel free - and thanks! http://paypal.me/dldnh
