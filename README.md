This is the home of the German translation. See [GERMAN_TRANSL_NOTES.md](GERMAN_TRANSL_NOTES.md) and the pull requests for current status, and [join us on Gitter](https://gitter.im/ncase-covid-19-translators/german#) for discussion (which currently takes place in German).

[Play the original English version here!](https://ncase.me/covid-19/)

[Spiel die deutsche Fassung / Play it in German](https://tquev.github.io/covid-19/)

# How To Build and Run
You need to [install pandoc](https://pandoc.org/installing.html) in order to use the `build.sh` or `build.cmd` script.

Run `build.sh` on MacOS or Linux, or run `build.cmd` on Windows. It will convert `words/words.md` into html and join it with `index_head.html` and  `index_tail.html` to form a new `index.html`.

You can open `index.html` in your browser from the file system, using an URL like `file:///your/local/path/covid-19/index.html`. 

Firefox users watch out: The simulators are embedded in iframes, which won't show up directly in e.g. Firefox when opened from the file system. This is due to security reasons. You can either use another browser (e.g. Chrome) or serve your page through a simple http server (e.g. run `ruby -run -e httpd . -p 8000` and open `http://localhost:8000`).

# How To Translate

**NOTE: I'm still editing some stuff! Words will be finalized-ish on May 4th.
You can start on stuff below, then check for new commits on the 4th to see what else to
translate. You're wonderful, thank you! 💖**

**NOTE 2: Sorry these instructions are really sloppy. Am writing this at midnight, rushing
to publish this.**

**NOTE 3: Indie gamedev is horrible.**

Step 1)

Check to see if it's already been translated to your language!
Go to the main site, look at the left sidebar.

Step 2)

If your language hasn't been done yet, check Github Issues to see if someone's already working on it.
**If so:** help them!
**If not:** fork this repo & link to your fork in a new Github Issue,
announcing that you're translating for that language!

Step 3)

* Translate `words.md`, (6000 words)
* Translate the `<head>`, sidebars, & footer of `index_head.html` and `index_tail.html` (200 words)
* Translate the images in `/pics` (800 words). If you don't have image-editing software, ask for help on the Github Issue!
* Translate `sim/index.html` (100 words)
* Translate the thumbnail `sharing/thumbnail.png`
* Use the build script (see "How to build" above) to generate `index.html`

Step 4)

Use Github Pages to put your forked translation live on the interweb!

Step 5)

Send a Pull Request editing *just* `<div id="translations">` in `index.html`
to add a link to your translation from the main page.

Step 6)

Wait for me to get off my lazy butt & accept the Pull Request (within \~72 hours? maybe?)

Step 7)

🎉 Party! Your translation should now be linked to from the main page.
(Remember to close your Github Issue!)
