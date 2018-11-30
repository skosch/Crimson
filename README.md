Crimson is a free and open-source text type family.

Versions/History
----------------

Crimson was first released in 2010 (as *Crimson Text*) and has undergone major
revisions since then.

| Version                                                             | Specimen | Info                                                                                                                                                                                                                                                                                                                                                                                                                |
| -------                                                             | -------- | ----                                                                                                                                                                                                                                                                                                                                                                                                                |
| <p>**2018**</br>("Crimson Pro")</p><p>Available on Google Fonts soon!<br/>:link: [Github Repo](https://github.com/Fonthausen/CrimsonPro)</p>  | <img src="https://raw.githubusercontent.com/skosch/Crimson/master/specimen3.png" width="300">  |  A professionally produced redesign by Jacques Le Bailly ([@Fonthausen](https://github.com/Fonthausen)), commissioned by Google, this new Crimson is a fresh take on the first version and the result of months of painstaking work to perfect colour, glyph balance and legibility. |                                                                                                                                                                                                                                                                                          
| <p>**2012**<br/>(current&nbsp;`master`&nbsp;branch)</p><p>:link: [Google Fonts (Amiri)](https://fonts.google.com/specimen/Amiri)<br/>:link: [Fontsquirrel](https://www.fontsquirrel.com/fonts/crimson)</p>                                    |   <img src="https://raw.githubusercontent.com/skosch/Crimson/master/specimen2.png" width="300"> | <p>A complete overhaul to take care of the wonky outlines and inconsistent spacing of the first version.</p><p>Adaptation of this version has been slow, because Google Fonts continues to provide the 2010 version.</p><p>However, this font is available as the Latin character set of Khaled Hosny's lovely Amiri font (also available on Google Fonts).</p><p>Similarity to Minion is rather coincidental (it's certainly not an intentional clone). Nevertheless, this version works well with LaTeX packages like `minionmath` (TeX users, check out `cochineal` as well).</p><p>:rotating_light: There are a good number of production issues still – if you are willing to help maintain this generation of Crimson, please let me know; I am generous with commit rights! :rotating_light:</p>  |
| <p>**2010**</p><p>:link: [Google Fonts](https://fonts.google.com/specimen/Crimson+Text)</p>  | <img src="https://raw.githubusercontent.com/skosch/Crimson/master/specimen1.png" width="500">   | <p>First release.</p><p>At a time when quality libre text fonts were scarce (unlike today), Crimson Text was intended to serve as a workhorse font for the masses, inspired by the fantastic work of designers like Jan Tschichold (Sabon), Robert Slimbach (Arno, Minion) and Jonathan Hoefler (Hoefler Text).</p><p>The *Crimson Text* family was meant to be accompanied by a *Crimson Display* family, which never came to be.</p> |  



Directories and Releases
------------------------
**Note:** The current directory structure will be replaced with the release of
Crimson Prime. The 2012 version will likely be kept (though not maintained) in a
separate branch.

The `Desktop Fonts` and `Web Fonts` directories above always contain the most up-to-date binaries, respectively.

`Desktop Fonts` contains both OTF and TTF versions of the font. While OTF is generally regarded as the more modern and powerful format, some Windows users may prefer the rendered appearance of the TTF files, at least for screen use.

`Web Fonts` contains subsetted (!) TTF, EOF and WOFF files. If the provided files do not meet the requirements of your website, which may well be the case, you will need to generate the webfonts yourself – using either a font editor like Fontforge or an online service such as fontsquirrel.com.

For TeX users, two packages are available: [Crimson](https://www.ctan.org/pkg/crimson) and [Cochineal](https://www.ctan.org/tex-archive/fonts/cochineal), maintained by Bob Tennent and Michael Sharpe, respectively. The latter doesn't include the Semibolds, but has been extended by a ton of glyphs and adjusted to work well in math environments (a remarkable effort in its own right!).

Background
----------
The font is designed in the tradition of beautiful oldstyle type, and inspired particularly by the fantastic work of people like Jan Tschichold (Sabon), Robert Slimbach (Arno, Minion) and Jonathan Hoefler (Hoefler Text). It features

* six cuts (regular, semibold and bold; with a Roman and Italic each)
* characters for a wide range of European languages – though some are still better supported than others between different cuts
* spacing/kerning done by Igino Marini's spectacular [iKern](http://www.ikern.com)
* an unbeatable price of zero!

Contributors
-------
This project owes its success to (in no particular order)

* Google's generous funding,
* a handful of anonymous donors,
* Adrien Tétar, for tirelessly fixing bugs,
* Rainer Schuhsler, for correcting the vertical metrics,
* Hector Haralambolous from Athens, who contributed many of the Coptic and Cyrillic glyphs,
* Georg Duffner of EB-Garamond fame, who helped with OpenType wizardry,
* Khaled Hosny, font guru, for fixing things I never knew were broken,
* George Williams, author of FontForge,
* Kate F., for hours and hours of overtime put into all of the font's rough edges
* the many talented and generous people I forgot to mention, including those submitting bug reports

Contributing
------------
Contributions to the project in any form are very much welcome. I am generous
with commit rights – if you would like to help maintain this project, gimme a shout!
