---
###
# unit information: 
# Fill out with relevant information for this unit
###
title: Formatting Examples and Stylesheet for MUTOR Units
number: 1
short_description: A style guide and formatting examples to be used when 
  designing MUTOR units
summary: This page contains examples of the basic formatting options 
  available when creating a MUTOR unit. The rendered document 
  (_site/units/example-unit.html) contains information about how to 
  format your unit, and is itself, along with its source file example-unit.md, 
  an example of how to construct a unit.
authors: 
 - John MacCallum
topics: [Jekyll, GitHub, Markdown, Liquid, YAML, HTML, Javascript, MUTOR Units]
test_questions: 
 - How do you format a link in markdown?
 - What does liquid code do?
 - "What are the different languages used throughout a unit file 
    (hint: there are as many as 6!)"
 
references:
 bekesy_nobel:
  authors: 
   - firstname: G.
     lastname: "von B&eacute;k&eacute;sy"
  title: 'Concerning the pleasures of observing, and the mechanics of the inner ear'
  publication: 'Nobel Lecture'
  year: 1961
    
 plomp_and_levelt_tonal_consonance:
  authors:
   - firstname: R.
     lastname: Plomp
   - firstname: W. J. M.
     lastname: Levelt
  title: 'Tonal Consonance and Critical Bandwidth'
  publication: 'The Journal of the Acoustical Society of America 38, 548'
  year: 1965
  doi: 'https://doi.org/10.1121/1.1909741'
    
 jekyll:
  authors:
   - firstname: Contributers
     lastname: Jekyll
  title: 'Jekyll: Simple, blog-aware, static sites'
  publication: '[https://jekyllrb.com](https://jekyllrb.com)'
  year: 2021
  
 github:
  authors:
   - firstname: Bill
     lastname: Gates
  title: 'GitHub'
  publication: '[https://github.com/](https://github.com/)'
  year: 2021
  
 git:
  authors:
   - firstname: Linus
     lastname: Torvalds
  title: 'git --local-branching-on-the-cheap (aka the "redbook")'
  publication: '[https://git-scm.com/book/en/v2](https://git-scm.com/book/en/v2)'
  year: 2021
  
 kramdown:
  authors:
   - firstname: Contributers
     lastname: Kramdown
  title: 'Kramdown: fast, pure-ruby, markdown-superset converter'
  publication: '[https://kramdown.gettalong.org](https://kramdown.gettalong.org)'
  year: 2021
  
 yaml:
  authors:
   - firstname: Contributers
     lastname: YAML
  title: "YAML Ain't Markup Language"
  publication: '[https://yaml.org](https://yaml.org)'
  year: 2021
  
 liquid:
  authors:
   - firstname: Team
     lastname: Liquid
  title: 'Safe, customer-facing template language for flexible web apps.'
  publication: '[https://shopify.github.io/liquid/](https://shopify.github.io/liquid/)'
  year: 2021
  
 weisstein_fourier_transform:
  authors:
   - firstname: E.W.
     lastname: Weisstein
  title: 'Fourier Transform.'
  publication: 'From MathWorld--A Wolfram Web Resource. [http://mathworld.wolfram.com/FourierTransform.html](http://mathworld.wolfram.com/FourierTransform.html)'
  year: 2020
  
###
# page layout:
# don't change
###
layout: unit
citations: ""
mathjax: true
---

{% include unit_preamble.md %}

# Structure of the Document

## Header

Each unit document begins with a header:

	---
	###
	# unit information: 
	# Fill out with relevant information for this unit
	###
	title: Title of the unit
	number: 0
	short_description: short description of the unit
	summary: abstract for the unit
	authors: 
	- author 1
	topics: [topic 1, topic 2]
	test_questions:
	- question 1
	- question 2
    references: 
     zongker2002:
      authors:
       - firstname: D.
         lastname: Zongker
      title: 'Chicken Chicken Chicken: Chicken Chicken'
      publication: 'https://isotropic.org/papers/chicken.pdf'
      year: 2002

	###
	# page layout:
	# don't change
	###
	layout: unit
	citations: ""
    mathjax: true
	---

The first part of the header contains unit-specific information that
should be filled out by the author of the unit. The syntax is 
[YAML](https://yaml.org/refcard.html) {% include cite ref='yaml' %}. 
Note the two equivalent ways of making a list:

	authors:
	 - author 1
	 - author 2
	topics: [topic 1, topic 2]

The second part of the header contains page configuration and layout
information and should not be edited.

## Preamble and Postamble

The first line after the header should be the following:

	{% raw %}
	{% include unit_preamble.md %}
	{% endraw %}

and the final line of the file should be:

	{% raw %}
	{% include unit_postamble.md %}
	{% endraw %}
	
These [Liquid](https://shopify.github.io/liquid/) _tags_ (called _statements_
in other programming languages) paste the text found in 
_includes/unit_preamble.md and _includes/unit_preamble.md respectively.

## Sections and Subsections

Section headers begin with one or more pound signs (#) followed by a space
and the title of the section:

	# This is a section
	## This is a subsection
	### This is a subsubsection
	
## Paragraphs

Consecutive lines of text are considered to be part of the same paragraph. 
To create a new paragraph, you must include a blank line.

	This will 
	all be one paragraph.
	
	This is a new paragraph.
	
## Multiple Files

You can divide your unit up into multiple files, for example, one containing
the contents of each section. In order to do that, make a folder in the 
directory for your unit and give it a name that begins with an underscore. 
Let's say you're working on unit 4, and you'd like to break it up into three 
files, you could organize them like this: 
_units/04/_sec1.md, _units/04/_sec2.md, _units/04/_sec3.md.
Your entire index.md file would then look like this (after the header):

	{% raw %}
	{% include unit_preamble.md %}
	{% include_relative _sec1.md %}
	{% include_relative _sec2.md %}
	{% include_relative _sec3.md %}
	{% include unit_postamble.md %}
	{% endraw %}
	
Note that these files will be copied exactly as is, so no header should be 
included in them, and they should not begin with a preamble or end with a 
postamble.

# Text Formatting

Basic text formatting is done using 
[Markdown](https://en.wikipedia.org/wiki/Markdown) 
syntax. There are many different *flavors* of Markdown, and the one Jekyll
uses is called [kramdown](https://kramdown.gettalong.org/quickref.html)
{% include cite ref='kramdown' %}. 

All Markdown syntax used in the document gets translated into HTML, and it is 
perfectly fine to write inline HTML code directly in the document, although,
in the interest of uniformity across the different units, it should be 
discouraged, and formatting should be limited to Markdown if possible.

## Emphasis

You can place *emphasis* around _words_ by surrounding them with either
underscores or asterisks, and **stronger** __emphasis__ by doubling them.

	You can place *emphasis* around _words_ by surrounding them with either
	underscores or asterisks, and **stronger** __emphasis__ by doubling them.
	
## Block Quotes, Preformatted Code, and Inline HTML

### Block Quotes

> Block quotes begin with a single > character followed by a space, and continue
until the next blank line.
> > Nested block quotes are possible too

	> Block quotes begin with a single > character followed by a space, and 
    continue until the next blank line.
	> > Nested block quotes are possible too

### Preformatted Code

Preformatted code can be created by simply indenting the text by one tab, or 
at least four spaces. It can also be done by `surrounding text in backticks.`

Preformatted code will not be processed by the Markdown interpreter
and will be rendered stylized differently than the other text, 
as shown in the code blocks throughout this document.

### Inline HTML

<div style="float: right; display: inline-block; width: 20%;" markdown="1">
> Hint: Protect yourself from CoViD-19 by washing your hands regularly!
</div>
Markdown is intended to be simple, and easy to read in its unrendered form. 
When it's not powerful enough to do what you want, you can simply write
HTML inline. It's important to note, however, that by default, the Markdown
renderer will ignore Markdown that's contained with HTML tags---the assumption
is that that code has already been formatted the way the user wants. In order
to force the Markdown to process the code between tags, add `markdown="1"`.

For example, we might want to create a "hint" box that appears throughout,
providing tips for the reader as they navigate the text. One way to do it 
would be to use the `<div>` tag with the appropriate style elements. We might
want to decide later how to style those boxes, and if they're spread throughout
all of the unit files, we would have to change them everywhere. A better 
solution is for one of us to create a custom Liquid tag in the _includes 
directory that all of us can use, and then there's only one place to change 
that code.

## Lists

There are three types of lists: *ordered lists*, *unordered lists*, and 
*definition lists*.

### Ordered and Unordered Lists

Ordered and unordered lists both start with a list item identifier, followed
by a space, and then the list item text. The list item identifier for an
ordered list is a number followed by a period, and for an unordered list, 
either a dash (-), a plus (+), or an asterisk (*). Which numbers and symbols
you use are of no consequence---they will be stylized according to the
CSS rules for ordered and unordered HTML lists specified in _unit.scss.

<div style="float: right; width: 50%" markdown="1">
1. foo
1. bar
   more stuff related to bar
1. bloo
</div>
<pre>
1. foo
1. bar
   more stuff related to bar
1. bloo
</pre>

<div style="float: right; width: 50%" markdown="1">
* foo
  A list of foo's:
  1. foo
  1. foo
  1. foo
+ bar
- bloo
</div>
<pre>
* foo
  A list of foo's:
  1. foo
  1. foo
  1. foo
+ bar
- bloo
</pre>

Any text that is on a new line but aligned with the beginning of the
item text will be associated with that item.

### Definition Lists

Definition lists associate a term with a definition. The term is just a 
word or phrase on its own line, followed by a line that begins with a 
colon followed by a space. New terms must be separated by a blank line.

<div style="float: right; width: 50%" markdown="1">
this is a term
: and this is its definition

term
: definition

*term*
: *definition*
  continued...
</div>
<pre>
this is a term
: and this is its definition

term
: definition

*term*
: *definition*
  continued...
</pre>

## Links

### Markdown Syntax

Links use the syntax `[display text](url)`, so `[clickme](http://www.google.com)` 
produces [clickme](http://www.google.com).

### Relative Links to MUTOR files

Linking to other files on the site should be done using relative paths.
In order to refer to the root of the site, you can use the global liquid
tag `{% raw %}{{ site.baseurl }}{% endraw %}` 
(which produces "{{ site.baseurl }}"), 
and if you need the host, you can 
use `{% raw %}{{ site.url }}{% endraw %}` (which produces "{{ site.url }}").
So, to
link from here to the 6th unit, you would write 
`[click here for unit 6]({% raw %}{{ site.baseurl }}{% endraw %}/units/06/index.html)`, 
which produces
[click here for unit 6]({{ site.baseurl }}/units/06/index.html).

## Typesetting Mathematical Formulas

Typesetting of Mathematical formulas can be done using LaTeX notation, thanks
to [MathJax](https://www.mathjax.org/). Formulas can be written inline
by surrounding them in dollar signs, just as with LaTeX: `$r^2$ is $\frac 1 2$`
($r^2$ is $\frac 1 2$).

You can use the equation environment to produce an equation on its own
line with an equation number, as well as a label to refer to it:

	\begin{equation}
	F(t)=\int_{-\infty}^{\infty}f(t)e^{-i2\pi xt}dt
	\label{eq:fouriertransform}
	\end{equation}
	
	Equation \eqref{eq:fouriertransform} is the Fourier Transform 
	{% raw %}{% include cite ref="weisstein_fourier_transform" %}{% endraw %}.
	
\begin{equation}
F(t)=\int_{-\infty}^{\infty}f(t)e^{-i2\pi xt}dt
\label{eq:fouriertransform}
\end{equation}

Equation \eqref{eq:fouriertransform} is the Fourier Transform 
{% include cite ref="weisstein_fourier_transform" %}.

# Figures

## Generic Figure

A figure of any sort can be added by enclosing the contents of the figure 
in a pair of Liquid tags:

	{% raw %}
	{% include begin-figure description="This isn't a very useful figure..." %}
	Figure goes here (<img>, something interactive, whatever...)
	{% include end-figure %}
	{% endraw %}
	
{% include begin-figure description="This isn't a very useful figure..." %}
Figure goes here (img tag, something interactive, whatever...)
{% include end-figure %}

## Images

Markdown has a simple syntax for including images that **we will not be using**.
Instead, images can be included using the 
`{% raw %}{% include begin-figure %}{% endraw %}` and 
`{% raw %}{% include end-figure %}{% endraw %}` tags described above,
or the slightly simpler syntax below:

	{% raw %}
	{% include img-figure url="my_image.png"  description="Descriptive text" %}
	{% endraw %}
	
{% include img-figure 
           url="assets/images/hfmt_logo_black.png" 
           description="HfMT logo" 
           width=""%}

## Tables

Tables use the regular Markdown table syntax enclosed in Liquid tags that
format it as a figure with a table number and caption:

    {% raw %}
	{% include begin-table description="Some data" %}
    | column 1 | column 2 | column 3 |
    | 33%      | 0.33     | 33 1/3   |
    {% include end-table %}
	{% endraw %}

{% include begin-table description="Some data" %}
| column 1 | column 2 | column 3 |
| 33% | 0.33 | 33 1/3 |
{% include end-table %}

See [here](https://kramdown.gettalong.org/syntax.html#tables) for all the 
table formatting options.

## Refering to Figures

If you would like to refer to a figure by number, you can assign
the value of the variable `fignum` (or `tabnum` in the case of a table)
immediately after the liquid code for the figure:

	{% raw %}
	{% include img-figure url="my_image.png" description="Descriptive text" %}
	{% assign myfigref = fignum %}
	{% endraw %}
	
{% include img-figure 
           url="assets/images/hfmt_logo_black.png" 
           description="Descriptive text" 
           width="" %}
{% assign myfigref = fignum %}

<pre>
Then you can refer to the figure above as figure {% raw %}{{ myfigref }}{% endraw %}.
</pre>
Then you can refer to the figure above as figure {{ myfigref }}.

The variable `fignum` is defined by the code in `img-figure` and `begin-figure`, 
and will be changed by the next use of either of those includes, so if you 
intend to use it, you should assign it to a variable and use the variable. 
Note that the figure must come before the reference for this to work.

### Forward References to Figures

Unlike typesetting systems like LaTeX, Jekyll processes its files in 
a single pass, which means that variables aren't usable until they've been
defined. So, you can't assign `fignum` to a variable as described above,
and use it _before_ that point in the text. In some cases, however, 
you will want to refer to a figure that comes immediately after the text,
in which case you can use the `nextfignum` include, for example, to refer
to figure {% include nextfignum %} just below.

{% include img-figure 
           url="assets/images/hfmt_logo_black.png" 
           description="Descriptive text" 
           width="" %}

## Interactive Examples

The folder `_includes/p` contains a number of includes for building 
interactive audio examples in the browser. In addition to a small
collection of "objects" (scope, spectroscope, transport, etc),
there are a few premade examples that begin with the letter "x".

## xwaveform

{% include begin-figure description="A waveform" %}
{% include p/xwaveform src="assets/audio/sather-0.7.bell.mn.wav" %}
{% include end-figure %}

## xspectroscope

{% include begin-figure description="A spectrum" %}
{% include p/xspectroscope src="assets/audio/sather-0.7.bell.mn.wav" gain="1.0" %}
{% include end-figure %}

## xsonogram

{% include begin-figure description="A sonogram" %}
{% include p/xsonogram src="assets/audio/sather-0.7.bell.mn.wav" %}
{% include end-figure %}

## xwaveform-spectroscope

{% include begin-figure description="A waveform (top) and a spectrum (bottom)" %}
{% include p/xwaveform-spectroscope 
           src="assets/audio/sather-0.7.bell.mn.wav" 
           gain="1.0" %}
{% include end-figure %}

## xwaveform-sonogram

{% include begin-figure description="A waveform (top) and a sonogram (bottom)" %}
{% include p/xwaveform-sonogram src="assets/audio/sather-0.7.bell.mn.wav" %}
{% include end-figure %}

## xwaveform-spectrogram-sonogram

{% include begin-figure 
           description="A waveform (top), a spectrum (bottom left), 
                        and a sonogram (bottom right)" %}
{% include p/xwaveform-spectroscope-sonogram 
           src="assets/audio/sather-0.7.bell.mn.wav" 
           gain="1.0" %}
{% include end-figure %}

## xwaveform-scope-spectroscope

{% include begin-figure 
           description="A Waveform (top), a time-domain scope (middle), 
                        and a spectroscope (bottom)" %}
{% include p/xwaveform-scope-spectroscope 
           src="assets/audio/sather-0.7.bell.mn.wav" 
           gain="1.0" %}
{% include end-figure %}

## xwaveform-spectroscope-small

{% include begin-figure 
           description="A small visual display of a buffer 
                        and its realtime spectrum" %}
{% include p/xwaveform-spectroscope-small 
           src="assets/audio/sather-0.7.bell.mn.wav" 
           gain="1.0" %}
{% include end-figure %}

# End Matter

## Quiz

A quiz section is automatically produced at the end of the unit by simply
listing the elements of the `test_questions` field in the header in order.
If that list is empty, no quiz section will be produced.

## Citations and References

Bibliographic references should be added to the `references` object
in the YAML header for the unit. For example: 

    references:
     bekesy_nobel:
      authors: 
       - firstname: G.
         lastname: "von B&eacute;k&eacute;sy"
      title: 'Concerning the pleasures of observing, and the mechanics of the inner ear'
      publication: 'Nobel Lecture'
      year: 1961

     plomp_and_levelt_tonal_consonance:
      authors:
       - firstname: R.
         lastname: Plomp
       - firstname: W. J. M.
         lastname: Levelt
      title: 'Tonal Consonance and Critical Bandwidth'
      publication: 'The Journal of the Acoustical Society of America 38, 548'
      year: 1965
      doi: 'https://doi.org/10.1121/1.1909741'

The first thing to note is that the indentation is semantic--it is what 
signifies that items are part of an object 
(see {% include cite ref='yaml' %}. 
In this case, `references` is
a dictionary that contains two entries: 
`bekesy_nobel`, and `plomp_and_levelt_tonal_consonance`, both of which are
also dictionaries.

A bibliographic entry must contain the following keys: `authors`, `title`,
`publication`, and `year`. Further, the `authors` entry must consist of 
a list of at least one dictionary (the `-` that preceedes `firstname`
denotes that this is a list), each of which must contain the entries
`firstname` and `lastname`. Finally, if your reference has a Document
Object Identifier, you can add a `doi` key for it, as seen in the second
entry.

The order of the entries for a given reference doesn't matter, but
consistency, at least in a single file, is encouraged.

Once these entries are in place, they may be referred to in the 
text using the `cite` include. For example,
`{% raw %}{% include cite ref='bekesy_nobel' %}{% endraw %}`
will produce this: {% include cite ref='bekesy_nobel' %}.

Each of the entries in the `references` object in the header will
be included automatically in the References section at the end of the unit.

# Misc

## Assets

All materials for your unit should go in your unit's folder, alongside
the `index.md` or `index.html` file for your unit. The top-level
`assets` folder is generally for top-level files (`about.md`, `index.md`, etc),
and should be reserved for that.

## Copyrighted Material

**Copyrighted materials must NEVER be checked into the repository.**

If you need to use a copyrighted image, audiofile, or whatever, link
to it remotely, but under no circumstances should you make a copy of it
and check it into the repo. 

## Editorial Notes

You can leave a note in the text using the following syntax:
`{% raw %}{% include note author="jm" text="a note from john" %}{% endraw %}`, 
where the "author" field should be your first and last initials. You
may add your initials and other details to the `contributors` dictionary
in `_config.yml`, where you can also set the color of the text of your
notes.

This is useful for making editorial comments to each other, for example:

So, the cochlea is located behind the right knee{% 
include note author="GH" text="John, I think you should double-check this..." %},
where it can be excited by striking the knee with great force.

Display of the notes may be globally switched off by setting `notes: false`
in `_config.yml`.

{% include unit_postamble.md %}
