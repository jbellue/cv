# Julien Bellue's CV

## What this is

Instead of struggling to keep a CV up to date, and failing to properly update it when I could, I decided to write my CV in LaTeX. This allows it to be committed on a repo, and to be easily updatable (also, it's so pretty now!).

Having it _almost_ public on a repo means I can send a link to anyone, and they'll get the latest version! Well, at least, if they can compile LaTeX... I could have the pdf files committed in there, but that didn't feel great, having compiled artifacts on the repo. Here's what great: using circleci, everytime an update is pushed to master, a docker container is spun up, compiles the CVs (both French and English) and publishes them to github pages.

Overkill? Yes. Awesome? Yes!

### The contact.tex file

There's a seemingly useless file in there... What's the point?

That file is only empty on that repo. On my machine, it is fully populated, with phone number, address, etc.
I didn't really feel like it was a great idea to advertise these online, so I took them out.
It has been removed from git using `git update-index --skip-worktree contact.tex` and `git update-index --assume-unchanged contact.tex`.

### Updates

* Added very basic URL parsing, to directly go to the French version ([https://jbellue.github.io/cv/?lang=fr](https://jbellue.github.io/cv/?lang=fr))
* Rewrote that README, to explain a bit what's up
* Shaved 3 minutes off the deployment by using a more standard docker image, and adding the needed packages
