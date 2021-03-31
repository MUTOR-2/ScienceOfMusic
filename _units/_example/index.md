---
###
# unit information: 
# Fill out with relevant information for this unit
###
title: Formatting Examples and Stylesheet for MUTOR Units
number: -1
short_description: A style guide and formatting examples to be used when 
  designing MUTOR units
summary: This page contains examples of the basic formatting options 
  available when creating a MUTOR unit. The rendered document 
  (_site/units/example.html) contains information about how to 
  format your unit, and is itself, along with its source file example.md, 
  an example of how to construct a unit.
authors: 
 - John MacCallum
topics: [Markdown, Liquid, HTML, MUTOR Units]
test_questions: []

###
# page layout:
# don't change
###
layout: unit
citations: ""
mathjax: true
# published: false
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
	summary: brief summary of the unit
	authors: 
	- author 1
	topics: [topic 1, topic 2]
	test_questions:
	- question 1
	- question 2

	###
	# page layout:
	# don't change
	###
	layout: unit
	citations: ""
	# published: false
	---

The first part of the header contains unit-specific information that
should be filled out by the author of the unit. The syntax is 
[YAML](https://yaml.org/refcard.html). Note the two equivalent ways
of making a list:

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
in other programming languages) paste the text found in _includes/unit_preamble.md
and _includes/unit_preamble.md respectively.

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
_units directory and give it a name that begins with an underscore. If you are 
working on unit 4, you could call it _04, for example. Let's say your unit
consists of three sections, and they're all contained in their own files: 
_04/04S1.md, _04/04S2.md, and _04/04S3.md. Your entire 04.md file would then 
look like this (after the header):

	{% raw %}
	{% include unit_preamble.md %}
	
	{% include_relative _04/04S1.md %}
	
	{% include_relative _04/04S2.md %}
	
	{% include_relative _04/04S3.md %}
	
	{% include unit_postamble.md %}
	{% endraw %}
	
Note that these files will be copied exactly as is, so no header should be 
included in them, and they should not begin with a preamble or end with a postamble.

# Text Formatting

Basic text formatting is done using [Markdown](https://en.wikipedia.org/wiki/Markdown) 
syntax. There are many different *flavors* of Markdown, and the one Jekyll
uses is called [kramdown](https://kramdown.gettalong.org/quickref.html). 

All Markdown syntax used in the document gets translated into HTML, and it is 
perfectly fine to write inline HTML code directly in the document, although,
in the interest of uniformity across the different units, it should be 
discouraged, and formatting should be limited to Markdown if possible.

## Emphasis

You can place *emphasis* around _words_ by surrounding them with either
underscores or asterisks, and **stronger** __emphasis__ by doubling them.

	You can place *emphasis* around _words_ by surrounding them with either
	underscores or asterisks, and **stronger** __emphasis__ by doubling them.
	
## Block Quotes and Preformatted Code and Inline HTML

### Block Quotes

> Block quotes begin with a single > character followed by a space, and continue
until the next blank line.
> > Nested block quotes are possible too

	> Block quotes begin with a single > character followed by a space, and continue
	until the next blank line.
	> > Nested block quotes are possible too

### Preformatted Code

Preformatted code can be created by simply indenting the text by one tab, or 
at least four spaces. It can also be done by `surrounding text in backticks.`

Preformatted code will not be processed by the Markdown interpreter
and will be rendered as a stylized differently than the other text, 
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
all of the unit files, we would have to change them everywhere. A better solution
is for one of us to create a custom Liquid tag in the _includes directory that all
of us can use, and then there's only one place to change that code.

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

Linking to other files on the MUTOR site should be done using relative paths.
The root of the site is `/MUTOR`, and the contents of the site are organized
in the folder _site (which you do not include in a relative link). So, to
link from here to the 6th unit, you would write 
`[click here for unit 6](/MUTOR/units/06.html)`, which produces
[click here for unit 6](/MUTOR/units/06.html).

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
	{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
	{% endraw %}
	
{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}

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

## Interactive Examples

Interactive examples are planned for the future, but not currently available.
For the moment, where you feel there should be an interactive example,
please post a screenshot of a Max patch that shows the basic functionality.

Here's a simple test of drawing SVG directly in the browser.

{% include begin-figure description="SVG test" %}
<div id="svg-axis-test">

<svg width="220" height="220">
 <line x1="100" y1="0" x2="100" y2="200" style="stroke:black;stroke-width:1"/>
 <line x1="0" y1="100" x2="200" y2="100" style="stroke:black;stroke-width:1"/>
</svg>

</div>
{% include end-figure %}

{% include begin-figure description="SVG test" %}
<div id="svg-axis-test-js">
<svg width="200" height="200"></svg>
</div>
<script type="text/javascript">
var xxx = document.getElementById("svg-axis-test-js").children[0];
var width = 200;
var height = 200;

var xaxis = document.createElementNS("http://www.w3.org/2000/svg", "line");

xaxis.setAttribute('x1', 0);
xaxis.setAttribute('y1', height / 2);

xaxis.setAttribute('x2', width);
xaxis.setAttribute('y2', height / 2);

xaxis.setAttribute('style', "stroke:black;stroke-width:1");

xxx.appendChild(xaxis);

var yaxis = document.createElementNS("http://www.w3.org/2000/svg", "line");

yaxis.setAttribute('x1', width / 2);
yaxis.setAttribute('y1', 0);

yaxis.setAttribute('x2', width / 2);
yaxis.setAttribute('y2', height);

yaxis.setAttribute('style', "stroke:black;stroke-width:1");

xxx.appendChild(yaxis);

for(i = 1; i <= 200; i++){
var x1 = ((i - 1) / (width / 2)) - 1;
var y1 = Math.sin(2. * Math.PI * x1);
var x2 = (i / (width / 2)) - 1;
var y2 = Math.sin(2. * Math.PI * x2);

var line = document.createElementNS("http://www.w3.org/2000/svg", "line");
line.setAttribute('x1', i - 1);
line.setAttribute('x2', i);
line.setAttribute('y1', height - (((y1 + 1) / 2) * height));
line.setAttribute('y2', height - (((y2 + 1) / 2) * height));
line.setAttribute('style', "stroke:black;stroke-width:1");
xxx.appendChild(line);
}

</script>
{% include end-figure %}

## Refering to Figures

If you would like to refer to a figure by number, you can assign
the value of the variable `fignum` (or `tabnum` in the case of a table)
immediately after the liquid code for the figure:

	{% raw %}
	{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
	{% assign myfigref = fignum %}
	{% endraw %}
	
{% include img-figure url="/MUTOR/assets/images/sin-amp-period.png" description="Descriptive text" %}
{% assign myfigref = fignum %}

<pre>
Then you can refer to the figure above as figure {% raw %}{{ myfigref }}{% endraw %}.
</pre>
Then you can refer to the figure above as figure {{ myfigref }}.

The variable `fignum` is defined by the code in `img-figure` and `begin-figure`, 
and will be changed by the next use of either of those includes, so if you 
intend to use it, you should assign it to a variable and use the variable. Note that the
figure must come before the reference for this to work.

# End Matter

## Quiz

A quiz section is automatically produced at the end of the unit by simply
listing the elements of the `test_questions` field in the header in order.
If that list is empty, no quiz section will be produced.

## Citations and References

Bibliographic entries that can be used to cite works are contained in the 
_references folder. There should be one file per reference, and the file should
contain the following fields in a YAML header (starting and ending with three
dashes):

	ref: 
	authors: 
	title: 
	year:
	
`ref`
: a short, descriptive name that will be used to cite the work inline in the text

`authors`
: a list of objects, each of which contains `lastname:` and `firstname:` entries

`title`
: the title of the work, preformatted according to the type of publication
  it is, i.e. if it is an article, it should contain all volume and issue information,
  etc.
  
`year`
: the year of publication

Example:

	---
	ref: weisstein_fourier_transform
	authors: [
	 {firstname: Eric W., 
	  lastname: Weisstein},
	]
	title: \"Fourier Transform.\" From MathWorld--A Wolfram Web Resource. <a href="http://mathworld.wolfram.com/FourierTransform.html">http://mathworld.wolfram.com/FourierTransform.html</a>
	year: 2020
	---
	
You may then use the `ref` field to cite this publication inline like this:
`{% raw %}{% include cite ref="weisstein_fourier_transform" %}{% endraw %}`, 
which will produce this: 
{% include cite ref="weisstein_fourier_transform" %}.

# Misc

## Assets

All assets go in the assets folder, organized by type (images, video, audio,
js, etc). If you need to add something and there isn't a folder for it,
go ahead and create it. 

The assets folder is different form the _includes folder. The _includes folder
contains only text file snippets that will get copied and pasted directly
into a Markdown file, while assets are more complex objects that can be referred
to while the page is running.

## Editorial Notes

You can leave a note in the text using the following syntax:
`{% raw %}{% include note author="jm" text="a note from john" %}{% endraw %}`, 
where the "author" field should be your first and last initials (I didn't know
what Xiao prefers, so XF and FX both work...).

This is useful for making editorial comments to each other, for example:

So, the cochlea is located behind the right knee
{% include note author="GH" text="John, I think you should double-check this..." %},
where it can be excited by striking the knee with great force.

# Audio Examples

## xwaveform

{% include begin-figure description="A waveform" %}
{% include p/xwaveform src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xspectroscope

{% include begin-figure description="A spectrum" %}
{% include p/xspectroscope src="/MUTOR/assets/audios/trombone.mp3" gain="1.0" %}
{% include end-figure %}

## xsonogram

{% include begin-figure description="A sonogram" %}
{% include p/xsonogram src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xwaveform-spectroscope

{% include begin-figure description="A waveform (top) and a spectrum (bottom)" %}
{% include p/xwaveform-spectroscope src="/MUTOR/assets/audios/trombone.mp3" gain="1.0" %}
{% include end-figure %}

## xwaveform-sonogram

{% include begin-figure description="A waveform (top) and a sonogram (bottom)" %}
{% include p/xwaveform-sonogram src="/MUTOR/assets/audios/trombone.mp3" %}
{% include end-figure %}

## xwaveform-spectrogram-sonogram

{% include begin-figure description="A waveform (top), a spectrum (bottom left), and a sonogram (bottom right)" %}
{% include p/xwaveform-spectroscope-sonogram src="/MUTOR/assets/audios/trombone.mp3" gain="1.0" %}
{% include end-figure %}

## waveform-scope-spectroscope

{% include begin-figure description="A Waveform (top), a time-domain scope (middle), and a spectroscope (bottom)" %}
{% include p/xwaveform-scope-spectroscope src="/MUTOR/assets/audios/noisebursts.wav" gain="1.0" %}
{% include end-figure %}

## xwaveform-spectroscope-small

{% include p/xwaveform-spectroscope-small src="/MUTOR/assets/audios/trombone.mp3" gain="1.0" %}

## testing...

{% include begin-figure description="Two sinusoids, one with variable phase with respect to the other." %}
{% include p/begin %}
{% assign fixedoscillatorname = mutor_patch_pfx | append: "fixedoscillator" %}
{% assign moveableoscillatorname = mutor_patch_pfx | append: "moveableoscillator" %}
{% assign transportname = mutor_patch_pfx | append: "transport" %}
{% assign freqnumberboxname = mutor_patch_pfx | append: "freqnumberbox" %}
{% assign phasenumberboxname = mutor_patch_pfx | append: "phasenumberbox" %}
{% assign phaseslidername = mutor_patch_pfx | append: "phaseslider" %}
{% assign fixedscopename = mutor_patch_pfx | append: "fixedscope" %}
{% assign moveablescopename = mutor_patch_pfx | append: "moveablescope" %}
{% assign sumscopename = mutor_patch_pfx | append: "sumscope" %}
{% assign fixedspectname = mutor_patch_pfx | append: "fixedspect" %}
{% assign moveablespectname = mutor_patch_pfx | append: "moveablespect" %}
{% assign sumspectname = mutor_patch_pfx | append: "sumspect" %}
{% assign fixedmultname = mutor_patch_pfx | append: "fixedmult" %}
{% assign moveablemultname = mutor_patch_pfx | append: "moveablemult" %}

{% include p/oscillator name=fixedoscillatorname freq="344.53125" type="sine" %}
{% include p/oscillator name=moveableoscillatorname freq="344.53125" type="sine" %}
{% include p/multiply name=fixedmultname factor=".5" %}
{% include p/multiply name=moveablemultname factor=".5" %}
<table><tr><td style="text-align:left;">
{% include p/number name=freqnumberboxname max="880" def="344.53125" label="frequency in Hz: " %}
{% include p/number name=phasenumberboxname def="0" label="phase (0-360): " %}
{% include p/slider name=phaseslidername min="0" max="360" width="200px" height="20px" %}
</td></tr><tr><td>
{% include p/scope name=fixedscopename samps_per_pixel=1 width="290px" %}
{% include p/spectroscope name=fixedspectname gain="1.0" width="290px" %}
</td></tr><tr><td>
{% include p/scope name=moveablescopename samps_per_pixel=1 width="290px" %}
{% include p/spectroscope name=moveablespectname gain="1.0" width="290px" %}
</td></tr><tr><td>
{% include p/scope name=sumscopename samps_per_pixel=1 width="290px" %}
{% include p/spectroscope name=sumspectname gain="1.0" width="290px" %}
</td></tr><tr><td>
{% include p/transport name=transportname %}
</td></tr></table>
{% include p/connect outlet=fixedoscillatorname inlet=fixedmultname %}
{% include p/connect outlet=moveableoscillatorname inlet=moveablemultname %}
{% include p/connect outlet=fixedmultname inlet=fixedscopename %}
{% include p/connect outlet=fixedmultname inlet=fixedspectname %}
{% include p/connect outlet=moveablemultname inlet=moveablescopename %}
{% include p/connect outlet=moveablemultname inlet=moveablespectname %}
{% include p/connect outlet=fixedmultname inlet=sumscopename %}
{% include p/connect outlet=moveablemultname inlet=sumscopename %}
{% include p/connect outlet=fixedmultname inlet=sumspectname %}
{% include p/connect outlet=moveablemultname inlet=sumspectname %}
<script type="text/javascript">
{{ freqnumberboxname }}.addEventListener('change', (e)=>{
	{{ fixedoscillatorname }}.frequency.value = parseFloat(e.target.value);
});
{{ phasenumberboxname }}.addEventListener('change', (e)=>{
	const f = parseFloat(e.target.value);
	{{ moveableoscillatorname }}.phase = f;
	{{ phaseslidername }}_set(f);
});
function phasesliderevent(e)
{
	{{ phasenumberboxname }}.value = {{ phaseslidername }}_value.toString();
	{{ moveableoscillatorname }}.phase = {{ phaseslidername }}_value;
}
{{ phaseslidername }}.addEventListener('mousedown', phasesliderevent);
{{ phaseslidername }}.addEventListener('mousemove', phasesliderevent);
</script>

{% include p/end %}
{% include end-figure %}

### does phase matter 2

{% include begin-figure description="Changes in phase do not always produce changes in our perception of a sound." %}
{% include p/begin %}

{% assign nosc = 6 %}

{% for i in (1..nosc) %}
{% capture oname %}{{ mutor_patch_pfx }}oscillator{{ i }}{% endcapture %}
{% capture freq %}{% cycle "344.53125", "689.0625", "1033.59375", "1378.125", "1722.65625", "2067.1875" %}{% endcapture %}
{% include p/oscillator name=oname freq=freq type="sine" %}

{% capture gname %}{{ mutor_patch_pfx }}gain{{ i }}{% endcapture %}
{% comment %}
{% capture gain %}{% cycle 1. | divided_by: nosc, "0", "0", "0", "0", "0" %}{% endcapture %}
{% endcomment %}
{% assign gain = 0.5 | divided_by: nosc %}
{% include p/gain name=gname gain=gain type="sine" %}
{% endfor %}

{% assign scopename = mutor_patch_pfx | append: "scope" %}
{% assign spectname = mutor_patch_pfx | append: "spect" %}
{% assign transportname = mutor_patch_pfx | append: "transport" %}

<table>
<tr><td style="text-align:left;">
Gains:
</td><td style="text-align:right;">
Phases (0-360):
</td></tr>
<tr><td style="text-align:left;">
{% for i in (1..nosc) %}
{% capture gsname %}{{ mutor_patch_pfx }}gainslider{{ i }}{% endcapture %}
{% include p/slider name=gsname min="0." max=".16666667" %}
{% endfor %}
</td><td style="text-align:right;">
{% for i in (1..nosc) %}
{% capture psname %}{{ mutor_patch_pfx }}phaseslider{{ i }}{% endcapture %}
{% include p/slider name=psname min="0" max="360" %}
{% endfor %}
</td></tr>
<tr><td colspan="2">
{% include p/scope name=scopename samps_per_pixel=1 %}
</td></tr><tr><td colspan="2">
{% include p/spectroscope name=spectname gain="1.0" %}
</td></tr><tr><td colspan="2">
{% include p/transport name=transportname %}
</td></tr>
</table>

{% for i in (1..nosc) %}
{% capture oname %}{{ mutor_patch_pfx }}oscillator{{ i }}{% endcapture %}
{% capture gname %}{{ mutor_patch_pfx }}gain{{ i }}{% endcapture %}
{% capture gsname %}{{ mutor_patch_pfx }}gainslider{{ i }}{% endcapture %}
{% capture psname %}{{ mutor_patch_pfx }}phaseslider{{ i }}{% endcapture %}
{% include p/connect outlet=oname inlet=gname %}
{% include p/connect outlet=gname inlet=scopename %}
{% include p/connect outlet=gname inlet=spectname %}
<script type="text/javascript">
{{ gsname }}.addEventListener('mousedown', (e)=>{
	{{ gname }}.gain.rampTo({{ gsname }}_value, .1);
});
{{ gsname }}.addEventListener('mousemove', (e)=>{
	{{ gname }}.gain.rampTo({{ gsname }}_value, .1);
});

{{ psname }}.addEventListener('mousedown', (e)=>{
	{{ oname }}.phase = {{ psname }}_value;
});
{{ psname }}.addEventListener('mousemove', (e)=>{
	{{ oname }}.phase = {{ psname }}_value;
});

{{ gname }}.toDestination();
{{ gsname }}_set({{ 0.5 | divided_by: nosc }});
</script>
{% endfor %}

<script type="text/javascript">
// function gainsliderevent(e)
// {
// 	// if(e.srcElement.id === "{{ gainslider1name }}"){
// 	// 	{{ gain1name }}.gain.rampTo({{ gainslider1name }}_value, .1);
// 	// }
// }
// {{ gainslider1name }}.addEventListener('mousedown', gainsliderevent);
// {{ gainslider1name }}.addEventListener('mousemove', gainsliderevent);

// {{ oscillator1name }}.toDestination();

// {{ gainslider1name }}_set(0.16666667);

// function phasesliderevent(e)
// {
// 	if(e.srcElement.id === "{{ phaseslider1name }}"){
// 		{{ oscillator1name }}.phase = {{ phaseslider1name }}_value;
// 	}
// }
// {{ phaseslider1name }}.addEventListener('mousedown', phasesliderevent);
// {{ phaseslider1name }}.addEventListener('mousemove', phasesliderevent);
</script>

{% include p/end %}
{% include end-figure %}

### loudness 1

{% include begin-figure description="Despite having the same amplitude, we perceive these two frequencies as having different loudness. Which tone sounds louder to you?" %}
{% include p/begin %}

{% assign rbuttonname = mutor_patch_pfx | append: "rbutton" %}
{% include p/rbutton name=rbuttonname items="Low Tone (344.53 Hz), High Tone (2756.25 Hz)" values="1,2" %}

{% assign nosc = 2 %}

{% for i in (1..nosc) %}
{% capture o1name %}{{ mutor_patch_pfx }}oscillator1{{ i }}{% endcapture %}
{% capture o2name %}{{ mutor_patch_pfx }}oscillator2{{ i }}{% endcapture %}
{% capture freq1 %}{% cycle "344.53125", "400", "344.53125", "2756.25" %}{% endcapture %}
{% capture freq2 %}{% cycle "344.53125", "400", "344.53125", "2756.25" %}{% endcapture %}
{% include p/oscillator name=o1name freq=freq1 type="sine" %}
{% include p/oscillator name=o2name freq=freq2 type="sine" %}

{% capture gname1 %}{{ mutor_patch_pfx }}gain1{{ i }}{% endcapture %}
{% capture gname2 %}{{ mutor_patch_pfx }}gain2{{ i }}{% endcapture %}
{% assign gain = 0.5 | divided_by: nosc %}
{% include p/gain name=gname1 gain=gain %}
{% include p/gain name=gname2 gain=0.0 %}
{% endfor %}

{% comment %}
{% assign scopename = mutor_patch_pfx | append: "scope" %}
{% assign spectname = mutor_patch_pfx | append: "spect" %}
{% endcomment %}
{% assign transportname = mutor_patch_pfx | append: "transport" %}

<table>
<tr>
{% for i in (1..nosc) %}
<td>
{% capture name %}{{ mutor_patch_pfx }}scope{{ i }}{% endcapture %}
{% include p/scope name=name samps_per_pixel=1 width="290px" %}
</td>
{% endfor %}
</tr>
<tr>
{% for i in (1..nosc) %}
<td>
{% capture name %}{{ mutor_patch_pfx }}spect{{ i }}{% endcapture %}
{% include p/spectroscope name=name gain="1.0" width="290px" %}
</td>
{% endfor %}
</tr>
<tr><td colspan="2">
{% include p/transport name=transportname %}
</td></tr>
</table>

<script type="text/javascript">
let {{ mutor_patch_pfx }}gains = new Array({{ nosc }});
</script>
{% for i in (1..nosc) %}
{% capture o1name %}{{ mutor_patch_pfx }}oscillator1{{ i }}{% endcapture %}
{% capture o2name %}{{ mutor_patch_pfx }}oscillator2{{ i }}{% endcapture %}
{% capture gname1 %}{{ mutor_patch_pfx }}gain1{{ i }}{% endcapture %}
{% capture gname2 %}{{ mutor_patch_pfx }}gain2{{ i }}{% endcapture %}
<script type="text/javascript">
{{ mutor_patch_pfx }}gains[{{ i | minus: 1 }}] = {{ gname2 }};
</script>
{% capture scopename %}{{ mutor_patch_pfx }}scope{{ i }}{% endcapture %}
{% capture spectname %}{{ mutor_patch_pfx }}spect{{ i }}{% endcapture %}

{% include p/connect outlet=o1name inlet=gname1 %}
{% include p/connect outlet=o2name inlet=gname1 %}
{% include p/connect outlet=gname1 inlet=gname2 %}
{% include p/connect outlet=gname1 inlet=scopename %}
{% include p/connect outlet=gname1 inlet=spectname %}
<script type="text/javascript">
{{ gname2 }}.toDestination();
{{ gsname }}_set({{ 0.5 | divided_by: nosc }});
</script>
{% endfor %}
<script type="text/javascript">
for(i = 0; i < {{ rbuttonname }}.length; i++){
	{{ rbuttonname }}[i].addEventListener('click', (e)=>{
		for(i = 0; i < {{ rbuttonname }}.length; i++){
			if({{ rbuttonname }}[i].value === e.target.value){
				{{ mutor_patch_pfx }}gains[i].gain.rampTo(1, .05);
			}else{
				{{ mutor_patch_pfx }}gains[i].gain.rampTo(0, .05);
			}
		}
	});
}
</script>

{% include p/end %}
{% include end-figure %}

### loudness 3

{% include begin-figure description="Despite having the same amplitude, we perceive these two tones as having different loudness. Which one sounds louder to you?" %}
{% include p/begin %}

{% assign rbuttonname = mutor_patch_pfx | append: "rbutton" %}
{% include p/rbutton name=rbuttonname items="Low Tone (344.53 Hz),High Tone (2756.25 Hz)" values="1,2" %}

{% assign nosc = 2 %}

{% for i in (1..nosc) %}
{% capture oname %}{{ mutor_patch_pfx }}oscillator{{ i }}{% endcapture %}
{% capture freq %}{% cycle "344.53125", "344.53125"", "1033.59375", "1378.125", "1722.65625", "2067.1875" %}{% endcapture %}
{% include p/oscillator name=oname freq=freq type="sine" %}

{% capture gname1 %}{{ mutor_patch_pfx }}gain1{{ i }}{% endcapture %}
{% capture gname2 %}{{ mutor_patch_pfx }}gain2{{ i }}{% endcapture %}
{% assign gain = 0.5 | divided_by: nosc %}
{% include p/gain name=gname1 gain=gain %}
{% include p/gain name=gname2 gain=0.0 %}
{% endfor %}

<script type="text/javascript">
let {{ mutor_patch_pfx }}partials = new Array(50);
for(i = 0; i < 50; i++){
	{{ mutor_patch_pfx }}partials[i] = 1.0 / (i + 1);
}
{{ mutor_patch_pfx }}oscillator2.partials = {{ mutor_patch_pfx }}partials;
</script>

{% comment %}
{% assign scopename = mutor_patch_pfx | append: "scope" %}
{% assign spectname = mutor_patch_pfx | append: "spect" %}
{% endcomment %}
{% assign transportname = mutor_patch_pfx | append: "transport" %}

<table>
<tr>
{% for i in (1..nosc) %}
<td>
{% capture name %}{{ mutor_patch_pfx }}scope{{ i }}{% endcapture %}
{% include p/scope name=name samps_per_pixel=1 width="290px" %}
</td>
{% endfor %}
</tr>
<tr>
{% for i in (1..nosc) %}
<td>
{% capture name %}{{ mutor_patch_pfx }}spect{{ i }}{% endcapture %}
{% include p/spectroscope name=name gain="1.0" width="290px" %}
</td>
{% endfor %}
</tr>
<tr><td colspan="2">
{% include p/transport name=transportname %}
</td></tr>
</table>

<script type="text/javascript">
let {{ mutor_patch_pfx }}gains = new Array({{ nosc }});
</script>
{% for i in (1..nosc) %}
{% capture oname %}{{ mutor_patch_pfx }}oscillator{{ i }}{% endcapture %}
{% capture gname1 %}{{ mutor_patch_pfx }}gain1{{ i }}{% endcapture %}
{% capture gname2 %}{{ mutor_patch_pfx }}gain2{{ i }}{% endcapture %}
<script type="text/javascript">
{{ mutor_patch_pfx }}gains[{{ i | minus: 1 }}] = {{ gname2 }};
</script>
{% capture scopename %}{{ mutor_patch_pfx }}scope{{ i }}{% endcapture %}
{% capture spectname %}{{ mutor_patch_pfx }}spect{{ i }}{% endcapture %}
{% comment %}
{% capture gsname %}{{ mutor_patch_pfx }}gainslider{{ i }}{% endcapture %}
{% capture psname %}{{ mutor_patch_pfx }}phaseslider{{ i }}{% endcapture %}
{% endcomment %}
{% include p/connect outlet=oname inlet=gname1 %}
{% include p/connect outlet=gname1 inlet=gname2 %}
{% include p/connect outlet=gname1 inlet=scopename %}
{% include p/connect outlet=gname1 inlet=spectname %}
<script type="text/javascript">
{{ gname2 }}.toDestination();
{{ gsname }}_set({{ 0.5 | divided_by: nosc }});
</script>
{% endfor %}
<script type="text/javascript">
for(i = 0; i < {{ rbuttonname }}.length; i++){
	{{ rbuttonname }}[i].addEventListener('click', (e)=>{
		for(i = 0; i < {{ rbuttonname }}.length; i++){
			if({{ rbuttonname }}[i].value === e.target.value){
				{{ mutor_patch_pfx }}gains[i].gain.rampTo(1, .05);
			}else{
				{{ mutor_patch_pfx }}gains[i].gain.rampTo(0, .05);
			}
		}
	});
}
</script>

{% include p/end %}
{% include end-figure %}

### Probe Tone

{% include p/begin %}
{% assign ptsynthname = mutor_patch_pfx | append: "ptsynth" %}

{% include p/ptsynth name=ptsynthname %}

{% include p/end %}

{% include unit_postamble.md %}
