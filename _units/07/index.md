---
###
# unit information:
# Rhythm
###
title: Rhythm
number: 7
short_description: Unit on Rhythm and Meter
summary: "Rhythm refers to a succession of events in time. While some 
definitions of rhythm involve concepts like repetition or patterns, 
psychoacoustics situates these properties in terms of our high level cognition, 
and studies the processes by which we group and segment streams of events into 
patterns and phrases. We not only impose patterns on sequences of temporal 
events, but we are able to recognize these patterns as similar even when they 
contain substantial temporal variation, making rhythm a potent expressive 
dimension of music performance. In order to study rhythm, we must be able to 
say when an event began, and in many cases, this is more difficult than we 
might expect. For some sounds, particularly those that begin abruptly, the 
physical onset, that is, the very earliest detection of energy released by the 
sound source, correlates well with our sense of the perceptual onset, or the 
moment we associate with the beginning of the sound. For other sounds, however, 
the physical and perceptual onsets are not the same, making the performance of 
rhythm, and the study of its performance, significantly more complex than 
simply playing the right note at the right time."
authors:
 - name: Psyche Loui
   website: "https://www.psycheloui.com"
 - name: John MacCallum
   website: "https://john-maccallum.com"
topics: [Introduction, Perceptual Onset Vs Temporal Envelope, Subdivision, Tactus, Tatum, Accents and Event Stream Vectors, Microtiming and Expressive Timing, Time Maps, Score Time Vs Performance Time, Rhythmogram, Models of Rhythm Perception, Interval Timing ,Covariance Model, CoupledOscillator]
test_questions:
 - What are the important features of sound that enable the perception of rhythmic beats?
 - What is the optimal range of rhythmic function? How do we know?
 - What are the axes of a rhythmogram?
 - What is microtiming?
 - What are the relative advantages and disadvantages of the interval timing model and the coupled oscillator model?
 
references:

  toussaint:
    authors:
      - firstname: G.
        lastname: Toussaint
    title: 'The geometry of musical rhythm: what makes a &quot;good&quot; rhythm good?'
    publication: 'CRC Press'
    year: 2019

  iyer:
    authors:
      - firstname: V.
        lastname: Iyer
    title: 'Microstructures of Feel, Macrostructures of Sound: Embodied Cognition in West African and African-American Musics'
    publication: 'Doctoral Dissertation, University of California, Berkeley'
    year: 1998
    
  desain_and_windsor:
    authors:
      - firstname: P.
        lastname: Desain
      - firstname: L.
        lastname: Windsor
    title: 'Rhythm perception and production'
    publication: 'http://www.nici.ru.nl/mmm/papers/rpp-book/rpp-book.html'
    year: 2000
    
  todd:
    authors:
      - firstname: N.P.
        lastname: Todd
    title: 'The auditory "primal sketch": A multiscale model of rhythmic grouping'
    publication: 'Journal of New Music Research, 23: 25-70'
    year: 1994
    
  benadon:
    authors:
      - firstname: F.
        lastname: Benadon
    title: 'Slicing the beat : Jazz eighth-notes as expressive microrhythm'
    publication: 'Ethnomusicology, 50(1): 73-98'
    year: 2006
    
  desain_and_honing:
    authors:
      - firstname: P.
        lastname: Desain
      - firstname: H.
        lastname: Honing
    title: 'The Formation of Rhythmic Categories and Metric Priming'
    publication: 'Perception'
    doi: '10.1068/p3370'
    year: 2003
    
  diedrichsen_et_al:
    authors:
      - firstname: J.
        lastname: Diedrichsen
      - firstname: R.B.
        lastname: Ivry
      - firstname: J.
        lastname: Pressing
    title: 'Cerebellar and basal ganglia contributions to interval timing'
    publication: 'In Functional and neural mechanisms of interval timing, Meck, W.H. (Ed.), pp. 457–483'
    year: 2003
    
  sadakata_et_all:
    authors:
      - firstname: M.
        lastname: Sadakata
      - firstname: P.
        lastname: Desain
      - firstname: H.
        lastname: Honing
    title: 'The Bayesian way to relate rhythm perception and production'
    publication: 'Music Perception, 23(3): 267-286'
    year: 2006
    
  buhusi_and_meck:
    authors:
      - firstname: C.V.
        lastname: Buhusi
      - firstname: W.H.
        lastname: Meck
    title: 'What makes us tick? Functional and neural mechanisms of interval timing'
    publication: 'Nature Reviews Neuroscience, 6: 755–765'
    year: 2005
    
  large_and_kohlen:
    authors:
      - firstname: E.W.
        lastname: Large
      - firstname: J.F.
        lastname: Kolen
    title: 'Resonance and the Perception of Musical Meter'
    publication: 'Connection Science, 6: 177-208'
    doi: '10.1080/09540099408915723'
    year: 2007
    
  barlow:
    authors:
      - firstname: C.
        lastname: Barlow 
    title: 'On Musiquantics'
    publication: 'Report No.51 of the Musicological Institute / Musikinformatik & Medientechnik of the University of Mainz'
    year: 2012

###
# page layout:
# don't change
###
layout: unit
citations: ""
mathjax: true
---

{% include unit_preamble.md %}

# Rhythm

## Introduction

While pitch has received the most attention in perception research, whereas most of music theory consists of putting pitches together to form harmonies, relatively little of common-practice Western musical theory addresses rhythm. Here we define rhythm as the pattern of temporal durations, especially in music. In this unit we will examine the perception and cognition of rhythm. We will begin with the basic observations, e.g. what the optimal range of rhythm and meter are, and how rhythmic subdivisions and expressive timing occur. Then we will discuss the various representations of rhythm, somewhat analogous to visual representations of pitch covered in Unit 5. Finally we will talk about models of rhythm perception and production, and bring in existing literature in an attempt to explain the temporal regularities and deviations that give rise to the human sense of rhythm.

## Perceptual Onset Vs Temporal Envelope
It is important to make a distinction between the temporal envelope, the attack portion of which we usually consider to be the beginning of the sound, and the perceptual onset of a sound. In the case of a percussive sound made by a bell or a piano for example, the attack is nearly instantaneous, while other instruments like violins and clarinets have a variety of attacks at their disposal which can make it difficult pinpoint the onset of their sound. Attacks that last less than 30ms tend to sound percussive, while attacks that are longer than 30ms are more like those of a bowed instrument. In the demo called attack-sync, you will hear two sounds, one with a long attack and one with a short percussive attack. When you start the patch, the two sounds will begin together, although, as you will notice, the one with the longer attack will appear to start later. See if you can adjust the start times such that they appear to start isochronously.

{% include begin-figure description="Max Example: Perceptual Onset" %}
<div style="display: block; text-align: center; float: center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/A4GIByK5Gac" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
{% include end-figure %}
(Max patch by Víctor Gutiérrez and John MacCallum)

{% comment %}
{% include mov-figure src="/MUTOR/assets/videos/unit7_perceptualonset.mp4" type="mp4" description="Maxpatch example: Perceptual Onset." width="600px" %}
{% endcomment %}

_You can have access to all MUTOR interactive Max patches when you download the maxpatches folder inside the [MUTOR github repository](https://github.com/MUTOR-2/ScienceOfMusic) and include it in the Max search path._

## Subdivision
The optimal range of tempo encoding occurs between 300ms and 1500ms. This is known as the zone of temporal integration, or the tactus. What happens when rhythmic durations are way above tactus? It turns out we subdivide. Subdivision refers to the breaking down of large units into usually even-sized smaller units. In the rhythmic sense the brain is performing chunking, and also building a hierarchical structure of rhythm. As in the frequency dimension for pitch and harmony (see units 5 and 8), small-integer ratios in time play important roles in rhythmic perception. Most rhythmic subdivisions consist of 2:1 ratios, especially in Western music. Rhythms in music of other cultures, e.g. clavé rhythmic patterns in Afro-Cuban and Brazilian rhythms, employ more complex rhythmic patterns, but which can also be broken down into chunks of 2:1 temporal ratios (see Toussaint).

{% comment %}
1. it helps working memory by helping chunking
2. clave and bell maps. Toussaint papers - relate somehow.
3. Four dots getting divided into chunks of two - think Gestalt and make pictures.
{% endcomment %}

## Tactus
Using the demo on synchronous clapping, we may observe that when
asked to tap in sync to a rhythmic stimulus, people commonly produce
isochronous taps at approximately 1-3 Hz (75-200 taps per minute),
i.e. with intervals of approximately 300-800ms between each
tap. When the musical stimulus to which we are synchronizing
contains sound events below this rate, we tend to subdivide the time
by tapping twice per sound event. When the sound to which we are
synchronizing is above this rate, we tend to subdivide our tapping
by tapping once for every two beats. This optimal rate of rhythmic
tapping is called the tactus and is in the range of 300-800ms. The
fast end of this range, 300ms or 200 beats per minute, corresponds
to the tempo marking of Presto. The slow end, 800ms or 75 beats per
minute, corresponds to Adagio. Assuming that our tapping rate
reflects our perception of the beat, we can say that the tactus is
the optimal range of rhythmic function in music.  Several lines of
research have addressed why the tactus seems to operate at this
range. Some believe that the tactus aids memory: the tactus may
reflect the perceptual system's ability to group distinct sound
events together in memory, so that instead of perceiving individual
sounds which decay rapidly in sensory memory, we could perceive
groups of rhythmic events which hang together to form a Gestalt, or
the perception of a whole. Paul Fraisse (from Clarke's chapter, in
Deutsch 1999) believed that the tactus arises from the anatomical
constraints of the body and motor functions, as our bodies
(musculature, nervous systems, etc) prevents us from tapping at
rates faster than 3Hz.

## Tatum
In a paper called &quot;A Novel Representation for Rhythmic Structure,&quot;
Vijay Iyer, Jeff Bilmes, Matt Wright, and David Wessel developed a
structure for describing rhythmic events called the tatum (a
contraction of temporal atom as well as an homage to the great
improvising pianist, Art Tatum). A tatum is a data structure that
represents the smallest cognitively meaningful subdivision of the
main beat and contains information about it's probability of
occurence, pitch/timbre, accent, duration, and deviation. Musically
speaking, a tatum might correspond to 16th notes or 32nd notes in
conventional notation, and a measure of music is represented by a
vector of tatums. A high probability of occurence means that the
beat is likely to be played (after all, not every beat of a bar is
played all the time), the accent determines how loudly the beat will
be played (this allows for the beginning of the beat of a
conventional meter to be accented, for example), the duration vector
could either determine the duration of each beat or represent a
range of durations from which a random value is chosen, and the
deviation allows for the beats to occur slightly early or late and
is meant to model the sort of microtiming that human performers
inadvertently add to their music and that computers lack.

## Accents and Event Stream Vectors
A piece of music is represented by an event-stream vector which contains all of the data for every tatum. An example of a vector representing a bar of 4/4 music might have a set of vectors as represented in table 1.

{% include begin-table description="accents1" %}
| Beat	| Probability	| Accent | Duration	| Deviation |
| 1	| 1	| 1	| 1	| .1 |
| 2	| .5	| .25 |	1	| .1 |
| 3	| 1	| .75 |	1	| .1 |
| 4	| .75	| .5	| 1	| .1 |
{% include end-table %}

Table 1.

In 4/4, the first beat is accented the strongest, the third beat the next strongest, the fourth beat is accented slightly as an upbeat to the next bar, and the second beat is the weakest. This is reflected in the probablity of occurence and accent vectors in table 1. The duration in this case is set at 1 which would signify a full beat and the deviation is very low. Table 2 represents a series of tatums that would produce a waltz-like feel.

{% include begin-table description="accents1" %}
| Beat	| Probability	| Accent | Duration	| Deviation |
| 1 |	1 |	1 |	1	| 0 |
| 2	| .5 |	.25 |	.5	| .1 |
| 3	| .75 |	.75 |	.5	| .1 |
{% include end-table %}

Table 2.

In the above examples, only the main beats of the measures are represented, however, in practice the vectors would contain information about every rhythmic event down to the smallest subdivision.

## Microtiming and Expressive Timing
With respect to rhythm, performances of music are often considered cold and lacking in feeling. It is tempting to think that if the metronome marking is 60 BPM, that the 16th-notes should go by at precisely 250 ms. Human performances, however are filled with small deviations in timing, often called microtiming or expressive timing. These small deviations, while not always overtly noticible, contribute to that human feeling that computer performances lack. In the following two examples, you will hear a melody from Robert Schumann's Träumerei, the first played without expressive timing, while the second includes deviations in timing.

mechanical timing

{% include p/xwaveform-spectroscope-small src="./traeumerei_mechanical.mp3" gain="1.0" %}

expressive timing

{% include p/xwaveform-spectroscope-small src="./traeumerei_betts.mp3" gain="1.0" %}
(Audio source: [Donald Betts](https://musopen.org/music/2326-scenes-from-childhood-op-15/). Copyright: [Public domain](https://creativecommons.org/publicdomain/mark/1.0/))

(source: Penel & Drake, 2000. Rhythm in music performance and perceived structure. In {% include cite ref="desain_and_windsor" %}

Above, in the section on the TatuM, along with the parameters of probability of occurence, duration, etc., we also defined a deviation vector. This deviation in timing is meant to mimic the microtiming found in human performance.

## Time Maps

Time maps are visual representations of rhythm and meter. These are useful because they help us visualize, analyze, and understand the black box of each individual performance by each musician.

Two kinds of time maps we introduce here are the rhythmogram and the
maps of performance time as a function of score time. These two time
maps are drastically different and are useful in different
applications. The rhythmogram is a time map of event frequencies of
notes, which enables the inference of the hierarchical rhythmic
structure of a musical piece. The maps of score time versus
performance time allow for a coherent representation of the entire
performance of a piece; they effectively capture the characteristic
expressive deviations of each performer.

In addition to the rhythmogram and the score vs performance time
map, various other rhythmic representations deserve mention. Desain
and Honing describe a triangular space that represents all possible
expressive deviations given a four-note rhythm.

{% include img-figure url="./time_desain_honing.jpg" description="Desain & Honing" %}
(Image by Janina Luckow. Adapted from: {% include cite ref="desain_and_honing" %} Perception.)

Other statistical methods to analyze rhythm and expressive
microtiming are also widely used. Benadon uses histograms, which are
graphs plotting the occurrence frequencies of events, to diagram the
beat-upbeat ratios (BURs) of the swing rhythm in jazz.  {% include
cite ref="benadon" %}

## Score Time Vs Performance Time
Given the discussion of microtiming above, it should be clear by now
that there is not necessarily a 1:1 correlation between the printed
score and what a performer plays. A simple score may only contain
pitches, rhythms, some dynamics, and information about the tempo and
meter. Although it may lack direction about how to vary the timing
expressively, we are not necessarily meant to interpret that lack of
direction as an indication that we should play the music as straight
and precisely as possible. When directions are given, they are often
vague at best, as in the term rubato. As we mentioned above, a
computer simulation that lacks microtiming and is based only on what
we might call score time tends to feel cold and mechanical. We can
begin to understand what a performer brings to the piece with
respect to expressive timing by plotting the score time against the
performance time as in figure 1.

{% include img-figure url="./time_score_performance.png" description="Score time vs performance time" width="400px" %}
(Image by James Cheung)

By modelling the relationship between score and performance time,
one can create a synthesizer that will play music with a more human
feel (A Novel Representation for Rhythmic Structure).

## Rhythmogram
The rhythmogram is an effective way to visualize rhythmic structure in a musical score or performance. First used by Neil Todd
{% include cite ref="todd" %} (mentioned in E. Clarke in Deutsch, 1999), the rhythmogram is a graph of musical performances with time on the x axis and a low-frequency filterbank on the y axis.

To visualize the low-frequency filterbank, consider a set of very low-frequency bandpass filters arranged logarithmically. For instance, several filters along the filterbank could be: 0.125Hz, 0.25Hz, 0.5Hz, 1Hz, 2Hz, and 4Hz. The rhythmogram plots musical time on the x axis and these filters on the y axis.

{% include img-figure url="./rhythmogram_axes.png" description="The axes of the rhythmogram: frequency filterbank vs. time" width="400px" %}
(Image by James Cheung. Adapted from: {% include cite ref="todd" %})


In this representation, notes which occur quickly, e.g. sixteenth notes, would show activity at the highest frequency filters along the filterbank.

{% include img-figure url="./rhythmogram_4hz.png" description="Fast notes activate high-frequency filters along the filterbank." width="400px" %}
(Image by James Cheung. Adapted from: {% include cite ref="todd" %})

Notes occurring at the next fastest level, i.e. eighth notes, would appear as activity at the next level of filters:

{% include img-figure url="./rhythmogram_2hz.png" description="" width="400px" %}
(Image by James Cheung. Adapted from: {% include cite ref="todd" %})
The next level of notes (quarter notes) would then appear energy at 1Hz filters, half notes at 0.5Hz filters, and finally, at the highest level, whole notes would appear at 0.25Hz filters.

{% include img-figure url="./rhythmogram_0.25hz.png" description="" width="400px" %}
(Image by James Cheung. Adapted from: {% include cite ref="todd" %})
Taken together, we see an emergent tree-like diagram of rhythmic activity, with the different layers of the filterbank representing each level of rhythmic structure and importance. Thus, we can say that the rhythmogram provides a visual representation of the tree-like rhythmic structure of a musical piece.

{% include img-figure url="./rhythmogram_notes.png" description="" width="400px" %}
(Image by James Cheung. Adapted from: {% include cite ref="todd" %})
The theoretically derived rhythmogram can be applied to actual performances to represent not only the rhythmic structure of the composition, but also the perceptual experience of the piece as a function of its decay rate over time. This links the mathematical idea of a filterbank to the auditory system, with its built-in mechanisms for the detection of onsets. In addition, the rhythmogram could be used to represent the sound structure of speech as well as music.

An application of the rhythmogram to represent perceptual decay is shown here in the speech utterance "tennessee air":

{% include img-figure url="./rhythmogram_tenessee.png" description="" width="400px" %}

(Image by James Cheung. Adapted from: [Todd, 1994](http://www.dcs.shef.ac.uk/~guy/pdf/icslp94.pdf))

Instead of a low-frequency filterbank, the above rhythmogram uses a the rate of decay of memory as its y axis. Notes which are more important in the rhythmic structure would be in memory for longer; thus, it would take a higher number of seconds to decay from memory.

This use of the rhythmogram also yields a tree-like structure, which can be represented diagramatically:

{% include img-figure url="./rhythmogram_tenessee_hierarchy.png" description="" width="300px" %}

(Image by James Cheung. Adapted from: [Todd, 1994](http://www.dcs.shef.ac.uk/~guy/pdf/icslp94.pdf))

Using the rhythmogram, the hierarchical structure of music and speech can be derived based on signal processing methods.

## Models of Rhythm Perception
Humans seem to have remarkable ability to perceive and produce rhythm. How do we account for such abilities scientifically? What is it about our bodies and our minds that enables the perception and production of rhythm?

Here we present two models of rhythm perception and production: the interval timing model and the coupled oscillator model. The interval timing model predicts the inter-onset interval between two events by viewing
Again, it is not clear that the answer must be one or the other; the truth may well lie somewhere in between, or it may be a third model which differs from both interval timing and coupled oscillator models.

An alternate model that relates rhythmic perception and production uses the Bayesian prediction framework, which predicts the probability of an event based on its prior probability, via the BayesRule. This framework has been applied to rhythm to predict rhythm production based on rhythm perception {% include cite ref="sadakata_et_all" %}.

## Interval Timing
Interval timing models of rhythmic perception and production posit that each rhythmic event is related to its previous event via a pacemaker, or accumulator. The pacemaker is a central timekeeper that sets an overall speed, or tempo, controlling the series of rhythmic events. The accumulator receives pulses from the pacemaker, and compares each interval to the interval immediately before it.

Pacemaker and accumulator models are well supported by neural evidence. Neurological patients with lesions in the basal ganglia, such as patients with Parkinson's Disease, have trouble keeping time accurately at high levels; that is, they tend to speed up or slow down their tempo significantly over time. In contrast, patients with cerebellar damage have trouble maintaining time at smaller intervals; their timing tends to be uneven and noisy. Taken together, these results suggest that the basal ganglia may act as a pacemaker, or a central timekeeper, whereas the cerebellum acts as an accumulator which corrects each individual rhythmic event by comparing it to its previous event.

## Covariance Model
One common observation in rhythm production is that when asked to tap evenly, humans tend to produce rhythms that are slightly uneven. For example, suppose you are required to produce even taps of two taps per second. Here is a time line of your expected taps, in seconds:

{% include img-figure url="./taps_expected.png" description="" %}
(Image by James Cheung)

However, it turns out that the actual measured production is as followed:

{% include img-figure url="./taps_uneven.png" description="" %}
(Image by James Cheung)

The simplest mathematical model to predict this pattern of behavior is the covariance model. The covariance model proposes that a negative correlation exists between the time interval between two taps and the time interval between the two taps immediately preceding. That is, if $t_n$ is the time interval between successive taps, i.e.

{% include img-figure url="./taps_intervals.png" description="" width="200px" %}
(Image by James Cheung)

Then for every time interval $t_n$, the next time interval, $t_{n+1}$, is negatively correlated in length.

{% include img-figure url="./taps_correlation.png" description="" width="200px" %}
(Image by James Cheung)

If $t_n$ is long, then $t_{n+1}$ is short; if $t_n$ is short, then $t_{n+1}$ is long. (This is the negative correlation principle).
Much of the deviations between rhythmic tapping can be modelled this way.

## Coupled Oscillator
In contrast to the IntervalTiming models of rhythm, the coupled oscillator models conceive of rhythm as the result of recurring cycles of individual processes known as oscillators. An oscillator is a device which produces a recurrent output at a fixed frequency determined by its own properties, with an amplitude that depends on the amount of energy given to it. A sine wave is a simple output of an oscillator. A spring and a pendulum are both prime examples oscillators.

{% include img-figure url="./oscillator_clock.gif" description="grandclock1.gif" width="200px" %}
(Animation by Janina Luckow)

A grandfather clock contains a pendulum, which is a kind of oscillator.

{% include img-figure url="./oscillator_pendulum.gif" description="pendulum2.gif" width="200px" %}
(Animation by Janina Luckow)

A simple pendulum.

{% include img-figure url="/MUTOR/assets/images/unit7_spring.gif" description="spring.gif" width="300px" %}
(Image source: [Martha Takats](http://webpages.ursinus.edu/mtakats/gifcat/spring.html))

A spring is another example of a simple oscillator. 

The coupled oscillator model states that a set of oscillators entrain to each other - that is, their frequencies become tuned to each other, or become coupled as a result of the interaction between two oscillators.

{% include img-figure url="/MUTOR/assets/images/unit7_springsym.gif" description="springsym.gif" width="300px" %}
(Image source: [Martha Takats](http://webpages.ursinus.edu/mtakats/gifcat/spring.html))

Coupled oscillators as two symmetrical springs.

Coupled pendulum oscillators 

{% include img-figure url="./oscillator_pendulum_trajectory.gif" description="pendulum.gif" width="200px" %}
(Animation by Janina Luckow{% comment %} Deadlink! Adapted from: [http://xeon.concord.org:8080/modeler/index.html] {% endcomment %})
{% comment %}
{% include img-figure url="/MUTOR/assets/images/unit7_pendulum.gif" description="pendulum.gif" width="200px" %}
Can you make the two pendulum images right next to each other? (left and right, not up and down)
{% endcomment %}

Applied to rhythm, the coupled oscillator model states that rhythm is the result of a set of internal oscillators which entrain towards the expected rhythm. Large and Kolen {% include cite ref="large_and_kohlen" %} and McAuley (1996) have modeled the perception and production of rhythm using coupled oscillators, where the placement of each beat within a metric structure is set by the phase of the oscillator, and individual oscillators entrain towards the recurrent beat. The use of coupled oscillators has led to some successful beat-finding algorithms. Coupled oscillator theories are computationally attractive as they can predict many observations, including the perception of meter as a recurrent rhythmic pattern, using relatively elegant mathematical models. Unfortunately, we are not yet sure of physiological bases of coupled oscillator models.

# A Mathematical Model of Meter: Clarence Barlow's Indispensability Function

In Western music, the inherent quality of a meter can be, within limits, encoded by the time signature and the beams employed in its notation. While measures in 3/4, 6/8 and 12/16 meters contain the same number of 16th notes, musicians have learned accentuate the pulses to give them a distinct character. A meter can be considered a kind of _relief_ upon which the gestalt of a rhythm is formed. A rhythm in conjunction with a series of pitches forms the gestalt of a melody (see Unit 8). While a meter conditions a rhythm, _syncopated_ rhythms can go against the grain of the underlying meter.

The composer and music theorist Barlow developed in the 1970s a quantitative model capable of yielding a _metric profile_ for any given meter. Such a profile assigns a unique weight value (indispensability) to each of its pulses. The term indispensability stems from _thinning_ experiments in which Barlow asked subjects to determine which pulses are necessary to maintain a clear sense of a meter when successively turning its pulses into rests and therefore are less **dispensible**. A metric profile thus represents a kind of "natural order" akin to a harmonic series. But just with the tones derived from the harmonic series, composers and improvising musicians are free decide when and how to violate this order, using this as a means to play with tension and relief on a temporal level.

A meter consists of one to several _strata_ highlighting its hierarchical nature. For example,  6/8 meter is composed of two strata, one with 2 pulses (dotted quarter notes) at the highest level and another with 3 pulses (eighth notes subdividing each of the dotted quarter notes) at the next lower level.

Each stratum is identified by a _prime divisor_. These are "basic" meters, usually with 2 and 3 pulses; but additive meters such as 5 (2+3) or 7 (2+2+3), can also be defined as basic meters. The indispensability values of a 2 meter are 1 0, those of a 3 meter are 2 0 1, and those of a 5 (2+3) meter are 4 0 3 1 2.

The following meters have the same number of pulses, yet a different stratification yielding the following profiles:<br/>
`3/4 (3x2x2):   11 0 6 3 9 1 7 4 10 2 8 5`<br/>
`6/8 (2x3x2):   11 0 6 2 8 4 10 1 7 3 9 5`<br/>
`12/16 (2x2x3): 11 0 4 8 2 6 10 1 5 9 3 7`<br/>

<br/>
{% include img-figure url="./barlow_indispensibility.png" description="Metric profiles for different meters with 12 pulses each" %}
(Image source: {% include cite ref="barlow" %})

The values for the first and second levels are also contained herein: to make these evident, subtract the difference between the quantity of pulses at the level shown above and those at the desired level from the indispensability, keeping only non-negative numbers, e.g. for 3/4 (the number of pulses on the 3rd level as shown above is 12):<br>
1st level (pulse quantity 3:subtract 12-3,i.e.9):<br/>
`2 - - - 0 - - - 1 - - -` <br/>
2nd level (pulse quantity 6:subtract 12-6,i.e.6):<br/>
`5 - 0 - 3 - 1 - 4 - 2 -` <br/>

Note that at all levels, the indispensability of the first pulse is always one less than the number of pulses, and that that of the second pulse is always zero.

The metric profile of a compound meter is obtained by adding the indispensability values of the basic profiles of each strata, rotating the first value backwards in each case.

12/16 meter:<br/>
`Pulse #     2  3  4  5  6  7  8  9  10 11 12 1`<br/>
`1st stratum 0  0  0  0  0  0  1  1  1  1  1  1`<br/>
`2nd stratum 0  0  0  1  1  1  0  0  0  1  1  1`<br/>
`3rd stratum 0  1  2  0  1  2  0  1  2  0  1  2`<br/>

`Pulse #     2  3  4  5  6  7  8  9  10 11 12 1`<br/>
`*1:         0  0  0  0  0  0  1  1  1  1  1  1`<br/>
`*2:         0  0  0  2  2  2  0  0  0  2  2  2`<br/>
`*2*2:       0  4  8  0  4  8  0  4  8  0  4  8`<br/>
`Sum         0  4  8  2  6  10 1  5  9  3  7  11`<br/>
<br/>
Rotating the first pulse back to the beginning yields:<br/>
`11  0  4  8  2  6  10  1  5  9  3  7`<br/>

Similarly, for a 2x3x5 meter (e.g. a 6/4 meter with every quarter note further divided by 5 sixteenth-note quintuplets), we initially get:<br/>
`Pulse #:`<br/>
`2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 1` <br/>
`1st stratum:` <br/>
`0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1` <br/>
`2nd stratum:` <br/>
`0  0  0  0  0  1  1  1  1  1  2  2  2  2  2  0  0  0  0  0  1  1  1  1  1  2  2  2  2  2` <br/>
`3rd stratum:` <br/>
`0  3  1  2  4  0  3  1  2  4  0  3  1  2  4  0  3  1  2  4  0  3  1  2  4  0  3  1  2  4` <br/>
<br/>
Now we multiply each stratum by the product of the pulse counts of the preceding strata (1 for the first stratum) and add the values together:<br/>
<br/>
`Pulse #:` <br/>
`2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30  1` <br/>
`*1:`<br/>
`0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1` <br/>
`*2:`<br/>
`0  0  0  0  0  2  2  2  2  2  4  4  4  4  4  0  0  0  0  0  2  2  2  2  2  4  4  4  4  4` <br/>
`*2*3:` <br/>
`0 18  6 12 24  0 18  6 12 24  0 18  6 12 24  0 18  6 12 24  0 18  6 12 24  0 18  6 12 24` <br/>
`Sum:` <br/>
`0 18  6 12 24  2 20  8 14 26  4 22 10 16 28  1 19  7 13 25  3 21  9 15 27  5 25 11 17 29` <br/>
<br/>
Rotating the final number back to the beginning yields:<br/>
`29 0 18 6 12 24 2 20 8 14 26 4 22 10 16 28 1 19 7 13 25 3 21 9 15 27 5 25 11 17` <br/>
<br/>
The following formula by Clarence Barlow formalizes this process (the rotation is applied by the addition of the 1 within the round and square brackets):

\begin{equation}
\Psi_z (n) = \sum_{r=0}^{z-1}\left \\\{ \prod_{i=0}^{z-r-1} p_i \Psi_{p_{z-r}} \left ( 1+\left( \left \lfloor 1+\frac{(n-2)\mod \prod_{j=1}^{z}p_j}{\prod_{k=0}^{r}p_{z+1-k}} \right \rfloor \mod p_{z-r} \right ) \right ) \right \\\}
\label{eq:barlow-indispensibility}
\end{equation}
Formula of the indispensability $/Psi$ of the $n$th pulse of a meter of stratification $p_1 \times p_2 \times \cdots \times p_z$

whereby

$ p_0 = p_{z+1} = 1 $

$ n = $ position in the bar of the pulse in question, starting at 1

$ p_j = $ stratification divisor on level $j$

$ z = $ number of levels in the stratification

$ \Psi_p (x) = $ indispensability of the $x$th pulse of a first-order bar with the prime stratification $p$

$ \lfloor x \rfloor = $ whole-number component (floor) of $x$.

The indispensability of the 24th pulse ($n=24; z=3$) can thus be calculated:

For $r=0$:
$(2\times 3) \times  \Psi_5 (1 + \lfloor 1 + \frac {22\mod 30} {1} \rfloor\mod 5) = 6 \times  \Psi_5 (1 + 23\mod 5) = 6 \times  \Psi_5 (1 + 3) = 6 \times  1 = 6$

For $r=1$:
$2 \times  \Psi_3 (1 + \lfloor 1 + \frac{22 \mod 30}{5} \rfloor\mod 3) = 2 \times  \Psi_3 (1 + 5.4\mod 3) = 2 \times  \Psi_3 (1 + 2) = 2 \times  1 = 2$

For $r=2$:
$1 \times  \Psi_2 (1 + \lfloor 1 + \frac{22 \mod 30}{15} \rfloor\mod 2) = 1 \times  \Psi_2 (1 + 2.47\mod 2) = 1 \times  \Psi_2 (1 + 0) = 1 \times  1 = 1$

The sum of the three value is therefore 9 (see above).
<br/>
<br/>
This formula can be extended to also work with additive meters such 2+3+3+2+3, whereby all segments consisting of number 2 ought to be considered _truncated_ 3 meters. This example derives from a $5\times 3$ meter with two of its groups (first and second to last) truncated, i.e. the missing pulses are removed from the profile and its indispensabilities collapsed in order to avoid gaps:

`5x3 meter:`<br/>
`14 0 5 10 3 8 13 1 6 11 2 7 12 4 9`<br/>

Remove pulses and collapse indispensability values<br/>
`2+3+3+2+3 meter:`<br/>
`14 0 [5] 10 3 8 13 1 6 11 2 [7] 12 4 9`<br/>
 => <br/>
`12 0 8 3 6 11 1 5 9 2 10 4 7`

Barlow has often used such profiles in those compositions for which he used a probabilistic generative approach (i.e. weighted chance operations), his 30-minutes piano piece [Çoǧluotobüsişletmesi](https://youtu.be/-y8bcdSXwY8) among them.

# Summary
We have provided an overview of the physic and biology of rhythm perception and production. Our perception of rhythm depends on sounds; in particular on perceptual accents or event onsets within the streams of sounds to which we are exposed in the environment. Rhythm seems to function optimally at the range of the Tactus, and can be subdivided into the smallest unit known as the Tatum. Microtiming and expressive timing can be described using time maps, which include the rhythmogram and graphs relating score time to performance time. Models of rhythm and meter can be divided into two broad classes known as the interval timing models and the coupled oscillator models. In some cases, rhythm production can also be modeled as covariance. The Bayesian method provides a method to relate rhythm perception with production.

{% if false %}
# References

Vijay Iyer's thesis: http://cnmat.berkeley.edu/People/Vijay/00.3%20Table%20of%20Contents.html#anchor292689

Desain & Windsor (2000) book on rhythm perception and production: http://www.nici.kun.nl/mmm/papers/rpp-book/rpp-book.html

Todd, N.P. The auditory ‘primal sketch’: A multiscale model of rhythmic grouping. Journal of New Music Research, vol. 23, pp. 25-70, 1994.

Benadon, Fernando. 2006. Slicing the beat : Jazz eighth-notes as expressive microrhythm. Ethnomusicology, 50(1), 73-98.

Desain & Honing, Perception. 2003.

Diedrichsen, Ivry & Pressing. 2003. Cerebellar and basal ganglia contributions to interval timing. http://ist-socrates.berkeley.edu/~ivrylab/pdf/dip_03.pdf

Sadakata, M., Desain, P.W.M., & Honing, H.J. (2006). The Bayesian way to relate rhythm perception and production. Music Perception, 23 (3), 267-286.

Buhusi & Meck. (2005). Nature Neuroscience
http://www.nature.com/nrn/journal/v6/n10/pdf/nrn1764.pdf

Large & Kohlen. (1994). Connection Science, 6 (1), 177 - 208.

Barlow (2012). On Musiquantics http://clarlow.org/wp-content/uploads/2016/10/On-MusiquanticsA4.pdf

{% endif %}

{% comment %}
## Links and Downloads

AccelerandoExplorer <!-- we used to have a Max patch for this Accelerando Explorer; does either of you still have it? PL -->

Doug Eck's java simulator of oscillators - provides explanations of coupled oscillator models in rhythm. http://www.iro.umontreal.ca/~eckdoug/vibe/index.html

Java applet demo of coupled oscillators: http://www.lon-capa.org/~mmp/applist/coupled/osc2.htm

Peter Desain's Music, Mind, and Machine Group offers several downloadable demos on expressive timing and the Bayesian model of rhythm. http://www.nici.kun.nl/mmm/
{% endcomment %}

{% include unit_postamble.md %}
