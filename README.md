# Julien Bellue's CV

[![CircleCI](https://circleci.com/gh/jbellue/cv/tree/master.svg?style=shield)](https://circleci.com/gh/jbellue/cv/tree/master)

## What this is

Instead of struggling to keep a CV up to date, and failing to properly update it when I could, I decided to write my CV in LaTeX. This allows it to be committed on a repo, and to be easily updatable (also, it's so pretty now!).

Having it _almost_ public on a repo means I can send a link to anyone, and they'll get the latest version! Well, at least, if they can compile LaTeX... I could have the pdf files committed in there, but that didn't feel great, having compiled artifacts on the repo. Here's what great: using circleci, everytime an update is pushed to master, a docker container is spun up, compiles the CVs (both French and English) and publishes them to github pages.

Overkill? Yes. Awesome? Yes!

### Updates

* Rewrote that README, to explain a bit what's up
* Shaved 3 minutes off the deployment by using a more standard docker image, and adding the needed packages