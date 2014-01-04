[PopClip](http://pilotmoon.com/popclip/) is a handy Mac utility that shows a little pop-up menu to act on text selected with the mouse. The developer [has provided a long list of extensions](http://pilotmoon.com/popclip/extensions/), including one for [Day One](http://dayoneapp.com/).

Their Day One extension just sends the selected text to Day One without any additional formatting or information. My intended use here is a bit different: select some text (on a webpage or somewhere else), and send it to Day One so I can write some note about it. As such, I want the text to be formatted as a blockquote, and I'd like to include information about where the text came from (which is the URL, in most cases).

I copied the Day One extension from PopClip to customize it a bit:

* Selected text is formatted as a Markdown blockquote, by prepending each line with `> `.
* If a URL and page title are available, include those as a Markdown link above the selected text.

Unfortuntaely, this only works properly with Safari right now, becuase PopClip cannot get the URL and title from other browsers. The PopClip documentation indicates that this should also work in Chrome, but it does not; [I have an issue open about this](https://github.com/pilotmoon/PopClip-Extensions/issues/388).
