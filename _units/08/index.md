---
###
# unit information:
# Unit 8: Gestalt and Melody
###
title: Gestalt and Melody
number: 8
short_description: Unit on Gestalt and Melody
summary: "Gestalt psychology describes human perception as the ability to 
identify structures and principles of order in sensory information. 
In contrast to earlier structuralist views that characterized the perception 
of complex objects as having been built from their smaller constituent parts, 
the gestalt view claims that perception contains qualities that do not result 
from the arrangement of simpler sensory qualities, which is to say, 
\"the whole is greater than the sum of its parts.\" 
Musical melody is an example of a gestalt quality: we can replace the 
notes of a melody with an entirely new set of notes, however, if we are 
careful to do it in such a way as to preserve the relationships between notes, 
we will hear the new melody as the same as the original. The gestalt 
perspective as applied to musical material then, is the study of the 
relationships between musical elements that give rise to the perception of 
musical structure."

animation: <iframe width="560" height="315" src="https://www.youtube.com/embed/a7oddyxr3Pk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
authors:
 - name: Georg Hajdu
   website: "http://georghajdu.de"
 - name: Psyche Loui
   website: "https://www.psycheloui.com"
topics: [Gestalt Psychology, Gestalt Principles of Melody, Texture Space]
test_questions:
- What are the Gestalt processes of visual perception? How do they relate to melody?
- What are the relative advantages of generating melodies as a matrix of conditional probabilities?
- To what extent is melodic contour important to our musical experience?
- What are the axes of a musical texture space? How does it categorize different musical genres?

references:
  deutsch_audio_illusions:
    authors:
      - firstname: D.
        lastname: Deutsch
    title: "Diana Deutsch's Audio Illusions"
    publication: 'http://philomel.com'
    year: 2003
    
  narmour:
    authors:
      - firstname: E.
        lastname: Narmour
    title: 'The Analysis and Cognition of Basic Melodic Structures: The Implication-Realization Model'
    publication: 'University of Chicago Press'
    year: 1990
    
  huron:
    authors:
      - firstname: D.
        lastname: Huron
    title: 'Tone and Voice: A Derivation of the Rules of Voice-Leading from Perceptual Principles'
    publication: 'Music Perception, 19(1): 1-64'
    year: 2001
    
  krumhansl:
    authors:
      - firstname: C.L.
        lastname: Krumhansl
    title: 'Music psychology and music theory: Problems and prospects'
    publication: 'Music Theory Spectrum, 17: 53-80'
    year: 1995
    
  hippel_and_huron:
    authors:
      - firstname: P.
        lastname: von Hippel
      - firstname: D.
        lastname: Huron
    title: 'Melodic gap-fill and regression to the mean'
    publication: 'American Musicological Society, Northern / Central California Chapter Meeting'
    year: 1998
    
###
# page layout:
# don't change
###
layout: unit
citations: ""
mathjax: true
---

{% include unit_preamble.md %}

# Introduction

In this unit we will discuss melody from a Gestalt perspective. Gestalt psychology is a direction within psychology that describes human perception as the ability to identify structures and principles of order in sensory information. In his 1890 article _Über Gestaltqualitäten_ (engl. _On Gestalt Qualities_), Austrian philosopher Christian von Ehrenfels made the claim that perception contains qualities that do not result from the arrangement of simple sensory qualities. Ehrenfels' research was the point of departure for Wertheimer, Koffka and Köhler who outlined Gestalt theory during the early 1910s while working at the Frankfurt university.
According to  Ehrenfels, a melody could serve as an example for such a Gestalt quality, since the tones as elements of the melody can be replaced by completely different tones, and it would still be heard as the same melody provided that the arrangement relationship between the tones is preserved.  A melody is defined as a series of pitches presented in succession. (This is in contrast to simultaneously presented pitches, which defines harmony as discussed in the next unit.) From a perceptual perspective, much of the importance of melody lies in the relationships between successive pitches in a melody, i.e. interval sizes and directions. Models of interval sizes, such as Implication Realization Model, Gap Fill, and Gestalt theories, are closely related to expectation. At a larger scale, the overall pattern of the melody, as dictated by the melodic contour, plays a crucial role in melodic perception. Knowledge in the statistical processes that generate melodies, such as Hidden Markov Models, can be useful in composition, especially given its potential in the automatic composition of large sets of melodies.
The combination of melodies gives rise to musical texture, and the creation of musical texture requires attention not only to each melody in itself, but to the interactions between melodies, commonly also referred to as voice leading and counterpoint.

The rules of voice leading can be related to a perceptual Texture Space, which in turn is capable of representing groups of melodies and their temporal and Gestalt relationships.

# Unconscious Inference

Gestalt psychology is  deeply rooted in the work of Hermann von Helmholtz (1821-1894) who, by some, is considered to be the greatest perceptual physiologist and psychologist of all time. He coined the term Unconscious Inference. Our brain infers three-dimensional objects based on clues found in the two-dimensional patterns on the retina without any conscious effort.

Such clues include:

* Linear perspective: e.g. converging lines indicate parallelism and depth in 3 dimensions
* Size gradient: elements of a similar pattern become smaller towards the horizon
* Aerial perspective: distant objects appear bright and blue
* Binocular disparity: each of the two eyes gets a slightly different image, from which the brain can draw conclusions about the relative distance of the contained objects
* Motion Parallax: moving the observer shifts the image on the retina. This makes it possible to draw conclusions about distances.

{% include img-figure url="./inference_tablesurfaces.png" description="The two parallograms representing the table surfaces are rotationally symmetric" %}
(Image by Janina Luckow. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))

The figure 8.1 shows that the internal representation of an object can differ greatly from the physical stimulus on the retina. In fact, both table surfaces (parallelograms) are identical. However, the fact that the lines are interpreted as part of a three-dimensional object creates the impression that the tables are different. [An animation of the rotating table top can be seen here](https://michaelbach.de/ot/sze-ShepardTables/).

# Invariance: Constancy of Size and Loudness
The size of an object on the retina changes with the distance to the observer. Nevertheless, we have developed the ability to perceive the size of an object independently of its distance. We call this phenomenon constancy of size. When listening, we find the phenomenon of volume constancy as an analogy to size constancy.
Example in the sound domain: The difference between quieter and farther away. The energy that an instrument emits is ideally evenly distributed over a spherical surface. As a result, the intensity reaching the listener decreases with the square of the distance. One can create a visual analogy: A balloon that either flies away or loses size. So we need other clues to decide about the nature of the process:
1. When an instrument plays quietly, the tone changes noticeably
1. Normally a sound is reflected by other objects in the room. This creates reverb, which gives information about the size of the room. When a sound is close, we hear more direct sound and little reverb that hits with a time delay. As the sound fades away, its intensity decreases and reverb increases.

{% include img-figure url="./invariance_size.png" description="We have developed the ability to perceive the size of an object independently of its distance" %}
(Image by Janina Luckow. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))

## Spatial and Temporal Inversion
The perception of objects can be confusing if the spatial or temporal order is reversed, as in the case of the double faces in this image, which we interpret in a specific, fixed way (this definition takes place in early childhood).

{% include img-figure url="./inversion_faces.png" description="The perception of objects can be confusing if the spatial or temporal order is reversed" %}
(Image by James Cheung. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))

The Thatcher illusion is based on the same principle:
{% include img-figure url="./inversion_thatcher.jpg" description="In an face drawn upside-down it is perceptually difficult to tell if  eyes and mouth are right-side up" width="400px" %}
(Image source: [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Thatcher_effect.jpg). Copyright: [Public domain](https://creativecommons.org/publicdomain/zero/1.0/deed.en))

An example in the auditory domain would be the reversed sound of a cymbal, a familiar sonority in popular music, which has a distict quality while still betraying its origin.

{% include begin-figure description="Reversed sound of a crash cymbal." %}
{% include p/xwaveform-spectroscope-small src="./inversion_cymbal.wav" gain="1.0" %}
{% include end-figure %}
(Audio source: [Free Wave Samples](https://freewavesamples.com/crash-cymbal-2). Copyright: [Jason Champion](https://freewavesamples.com/about-us-license))

# Perceptual Completion
Perceptual Completion of incomplete information (e.g., blind spot or TV noise experiments). Top-down in addition to bottom-up processes, based on experience. Computers have difficulty to deal with ambiguity for lack of visual knowledge.

In the example on the left, as with any reason, the elongated object continues under the round disk. Even infants make such assumptions and are surprised if they do not apply.

{% include img-figure url="./completion.jpg" description="Perceptual completion" %}
(Image by Janina Luckow. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))
{% include img-figure url="./completion_show.jpg" description="We assume objects to continue when parts of it are hidden behind another object" width="600px" %}
(Image by Janina Luckow. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))

{% include p/xwaveform-spectroscope-small src="./completion.wav" gain="1.0" %}

# Reification: Subjective Contour
A similar phenomenon is the _subjective contour_. It is difficult not to see that white triangle, though it does not actually exist. This phenomenon is related to virtual pitch, apparent in low-bandwidth phone calls and strinking pitch of bells. The principle behind subjective contour is referred to as [_reification_](https://en.wikipedia.org/wiki/Reification_(fallacy)): "The error of treating something that is not concrete, such as an idea, as a concrete thing." 

{% include img-figure url="./reification_kinazsa.png" description="Subjective contour" width="300px" %}
(Image by Janina Luckow. Adapted from: [Kyogu Lee](https://ccrma.stanford.edu/~kglee/m220c/cognition.html))

# Figure-Ground Organization
Figure-ground organization is a Gestalt principle depicts our ability to make out a figure in front of a background. We tend to perceive as figures those parts of our perceptual fields that are convex, symmetric, small, and enclosed. The [figure–ground vase illusion](https://en.wikipedia.org/wiki/Rubin_vase) arises when the visual information given is ambiguous. In the figure below, a low quality, black and white photo of a dalmatian dog. The viewer first has to use perceptual completion to recognize the outlines of the dog against the background which could be interpreted as an overexposed scene in a park. Once the viewer has successfully analysed the scene, he or she will identify the dog much more quickly when shown the image again. Bregman has coined the term _auditory scene analysis_ to denote processes in the auditory domain analogous to figure-ground organization and perceptual grouping.

{% include img-figure url="./Dalmatian.png" description="Figure-ground organization" width="400px" %}
(Image source: R. C. James, The Dalmatian)

# Gestalt Laws of Grouping
According to the Gestalt psychologists, the brain uses the principles of Gestalt grouping of sensory stimuli to shape objects, especially if the incoming information is incomplete.
The principles include:
## Similarity
-- elements that are more similar (i.e. share common features) are more likely to be grouped together.
We perceive the cyan squares as one group and the pink squares as another group; this illustrates grouping by similarity of colour.
{% include img-figure url="./gestalt_similarity.png" description="Principle of similarity" %}
(Image by James Cheung)
## Symmetry
-- symmetrical figures are perceived as being grouped together.
 The pair of shapes on the left is more likely to be perceived as a group compared to the pair on the right; this is because the left pair is symmetrical around the dotted line whereas the right pair is asymmetrical. 
 {% include img-figure url="./gestalt_symmetry.png" description="Principle of symmetry" width="400px" %}
(Image by James Cheung)
## Proximity
- elements that are close together are more likely to be grouped together.
The squares that are closer together are perceived as being grouped together.
{% include img-figure url="./gestalt_proximity.png" description="Principle of proximity" %}
(Image by James Cheung)
## Good continuation
- we tend to perceive figures as being continuous.
 The pink diagonal is perceived as one line instead of two, due to the principle of good continuation.
{% include img-figure url="./gestalt_goodcontinuation.png" description="Principle of good continuation" width="400px" %}
(Image by James Cheung)
## Closure
- we tend to see complete figures despite missing parts.
{% include img-figure url="./gestalt_closure.png" description="Principle of closure" width="400px"%}
(Image by James Cheung)
## Common fate
- elements that change similarly over time tend to be grouped together.
{% include img-figure url="./gestalt_commonfate.gif" description="Principle of common fate" %}
(Animation by James Cheung)


# Melody

## Melodic Contour

Contour generally refers to the pattern of directions for pitch intervals. The series of upward and downward pitch intervals can be represented as patterns of transitions between notes. Thus, in the following example of a melody from Joplin's The Entertainer:

{% include img-figure url="./melody_entertainer.png" description="Score of the Entertainer" %}
(Image by James Cheung)

In this melody, each interval can be represented as its direction - up, down, or same. The series of interval directions are:

{% include img-figure url="./melody_entertainer_directions.png" description="Interval Directions" %}
(Image by James Cheung)

Thus, the contour of the Entertainer melody can be represented as:

{% include img-figure url="./melody_entertainer_contour.png" description="Contour" width="400px" %}
(Image by James Cheung)

Contour is shown to be very important to the perception of melody. {% include cite ref="deutsch_audio_illusions" %} demonstrates that when the contour of a melody is intact, melodies can be heard even if the pitches themselves are incorrect. (This explains why a tune is often still recognizable even when performed grossly out of tune.) If the contour is disrupted, then the melodic recognition is impaired, even when the pitch classes are retained.
The following demonstration (from {% include cite ref="deutsch_audio_illusions" %} CD Musical Illusions and Paradoxes) illustrates the importance of melodic contour. In the first sound file, a familiar melody is played in the correct pitch classes but in scrambled octaves, such that the melodic contour is disrupted. Can you recognize the melody?

{% include p/xwaveform-spectroscope-small src="melody_star_scrambled.wav" gain="1.0" %}
scrambled melody
(Audio by Víctor Gutiérrez)

{% include p/xwaveform-spectroscope-small src="melody_star.wav" gain="1.0" %}
original melody
(Audio by Víctor Gutiérrez)

## Implication Realization Model

Eugene Narmour's Implication Realization Model {% include cite ref="narmour" %} provides a set of predictions for melodic structure. In particular, the I-R model looks at interval sizes and directions between notes of a melody.
(PDF) [Simplifying the Implication-Realization Model of Melodic Expectancy.](https://www.researchgate.net/publication/230746009_Simplifying_the_Implication-Realization_Model_of_Melodic_Expectancy) [accessed Aug 30 2020].
In the I-R model, when given three notes making two intervals, the first interval is defined as the Implication interval, whereas the second interval is the Realization interval.  

In general, the I-R principles successfully predicted response patterns, which did not differ as a function of musical style, formal musical training, or cultural background. In short, the results were consistent with Narmour's claim of innate influences on melodic expectancies.  

{% include img-figure url="./melody_ir_intervals.png" description="Implication and Realization Intervals" %}
(Image by James Cheung)

### Definitions of the I-R model

The space of all possible pairs of Implied and Realized intervals. Implied intervals, with possible sizes ranging from 0 (same note) to 11 semitones (major seventh) are plotted on the Y axis. Realized intervals, ranging from 12 semitones in a different direction to 12 semitones in the same direction, are plotted on the X axis. Each possible I-R pair can be represented as a square in the grid.

{% include img-figure url="./melody_ir_grid.png" description="A grid representing possible combinations of implicatove and realized intervals" %}
(Image by James Cheung)

Narmour's I-R model predicts these melodic principles:
1. Registral Direction – small implication intervals are followed by realization intervals in the same direction; large implication intervals are followed by realization intervals in the opposite direction
1. Intervallic Difference – small intervals imply similar-sized intervals; large intervals imply smaller intervals
1. Registral Return – intervals imply similarly sized intervals in the opposite direction  
1. Proximity – realized intervals should be no larger than a perfect 4th.
1. Closure – realized intervals tend to smaller and in the opposite direction than implied intervals.

Schellenberg (1997) showed via principle component analysis that only two principles are necessary to sufficiently describe listeners' expectations of melodic continuation:
1. Pitch-Proximity - this principle states that when listeners hear an implicative interval in a melody, they expect the  next tone to be proximate in pitch to the second tone of the implicative interval
1. Pitch-Reversal - this principle claims that listeners often expect the next tone to be proximate in pitch to the tone that preceded the most recently heard tone. In other words, listeners often expect the second tone of a realized interval to be proximate to the first tone of the implicative interval.

{% include img-figure url="./melody_ir_proximity.png" description="Pitch Proximity" width="400px" %}
(Image by James Cheung)
{% include img-figure url="./melody_ir_reversal.png" description="Pitch Reversal" width="400px" %}
(Image by James Cheung)
Quantification of principles of the revised two-factor model of the implication-realization model. Because larger intervals are assigned higher values, negative associations between the principle and expectancy data are presumed.

#### Gap-Fill
Gap-fill was first proposed by Leonard B. Meyer in 1973 {% include cite ref="hippel_and_huron" %} The basic principle of gap-fill states that large intervals in a melody imply smaller intervals in the opposite direction. Schellenberg demonstrates that gap-fill is the logical outcome when a melody violates the pitch-proximity principle and pitch-reversal is applied.

{% include img-figure url="./melody_gapfill.png" description="An illustration of gap-fill processes." %}
(Image by James Cheung)

Countless famous musical examples can illustrate the gap-fill principle. For instance, the tune of "My Bonnie lies over the ocean" contains a large intervallic leap upwards between "my" and "Bonnie", followed by small steps downwards in "-nie lies over the ocean."

The idea of gap-fill most closely borrows from Gestalt theories in perception, which are a set of theories on how units are perceived as a whole. The Gestalt principles of similarity, proximity, good continuation, symmetry, and closure, originally used in vision, are important also for perceiving melodies as holistic, unified objects.

Demonstration from ASA CD: Segregation Of A Melody From Interfering Tones This demo shows the principle of proximity: pitches close together in register tend to be grouped together.

{% include p/xwaveform-spectroscope-small src="./melody_segregation.mp3" gain="1.0" %}
(Audio source: [ASA Auditory Demonstrations](http://www.rctn.org/bruno/data/auditory_demonstrations/ASA-auditory-demonstrations/))

## Hidden Markov Models

A melody can be generated using a Hidden Markov Model (HMM). An HMM is a chain of sequential probabilities. Each node in a Markov model occurs with a certain probability, and predicts each of the other nodes connected to it with a certain probability.
An example of a Hidden Markov Model can be used to predict weather:

{% include img-figure url="./markov_weather.jpg" description="A Hidden Markov Model used to predict weather." %}
(Image by Janina Luckow. Adapted from: [Markov Models and Hidden Markov Models](https://dzone.com/articles/markov-models-and-hidden))

A graph of an HMM is shown above. The model predicts the weather of each day given the previous day. We can see that according to this model, the probability that a day is sunny given that the previous day is also sunny is 0.8, the probability of a foggy day given to the previous foggy day is 0.5, and the probability that a rainy day is followed by another rainy day is 0.6. Each weather state also predicts each other weather state, with lower probabilities.
Adapted to music, HMMs can be used to generate melodies. Each interval can be a predictor of the next interval, as specified in gap fill and the IR model.

{% include img-figure url="./markov_melody.png" description="A Hidden Markov Model used to predict a melodic sequence. (Adapted from: http://www.dlib.org/dlib/february02/birmingham/birmingham-appendix2.html)" %}
(Image by James Cheung. Adapted from: [William Birmingham, Bryon Pardo, Colin Meek, and Jonah Shifrin](http://www.dlib.org/dlib/february02/birmingham/birmingham-appendix2.html))

The following interactive example is a matrix of transitions between intervals in a melody. The melody transitions matrix below generates a melody from a Hidden Markov Model:

{% include begin-figure description="Max Example: Markov Chains" %}
<div style="display: block; text-align: center; float: center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/WoYhU3NwosQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
{% include end-figure %}
(Max Patch by Víctor Gutiérrez and John MacCallum)

_you can have access to all MUTOR interactive maxpatches when you download the [MUTOR github repository](https://github.com/MUTOR-2/ScienceOfMusic) inside the maxpatches folder._

## Texture Space

The combination of melodic material gives rise to musical texture. Huron {% include cite ref="huron" %} proposes a two-dimensional space for musical texture, where the x-axis represents semblant motion whereas the y-axis represents onset asynchrony.

Here are some examples of the way melodies fit in each corner of the texture space:
1. high semblant motion, high onset synchrony (e..g Gregorian chant)
{% include img-figure url="./texture_monody.png" description="Monody" width="300px" %}
(Image by James Cheung)
2. high semblant motion, low onset synchrony (e.g. a chorale)
{% include img-figure url="./texture_homophony.png" description="Homophony" width="300px" %}
(Image by James Cheung)
3. low semblant motion, high onset synchrony (e.g. a canon)
{% include img-figure url="./texture_heterophony.png" description="Heterophony" width="300px" %}
(Image by James Cheung)
4. low semblant motion, low onset synchrony (e.g. a quadruple fugue)
{% include img-figure url="./texture_polyphony.png" description="Polyphony" width="300px" %}
(Image by James Cheung)
To fit all four kinds of melodic textures onto the texture space:

{% include img-figure url="./texture_space.png" description="Texture Space" width="400px"%}
(Image by James Cheung)

This texture space may be used to predict different musical styles. Different genres of music tend to occupy distinct areas of texture space, as shown below:

{% include img-figure url="./texture_space_styles.jpg" description="Various Musical Genres projected onto Texture Space " %}
(Image by Janina Luckow)

{% comment %}
(image source: http://music-cog.ohio-state.edu/Huron/Publications/huron.voice.leading.html)
this link is not working
{% endcomment %}

{% if false %}
# References

- Diana Deutsch's CD Musical Illusions and Paradoxes.http://philomel.com
- E. Narmour. The Analysis and Cognition of Basic Melodic Structures: The Implication-Realization Model. (Chicago: Univ. of Chicago Press. 1990)
- Wikipedia article on Hidden Markov Models: http://en.wikipedia.org/wiki/Hidden_Markov_Model
- Huron Tone and Voice: a Derivation of Rules of Voice-Leading. http://music-cog.ohio-state.edu/Huron/Publications/huron.voice.leading.html
- Krumhansl, C.L. (1995). Music psychology and music theory: Problems and prospects. Music Theory Spectrum, 17, 53-80.
- Narmour, E. (1990). The analysis and cognition of basic melodic structures: The implication-realization model. Chicago: University of Chicago Press.
- von Hippel, P. & Huron, D. Melodic gap-fill and regression to the mean.American Musicological Society, Northern/Central California Chapter Meeting.
Oakland, California (1998 Feb. 7)
{% endif %}

{% comment %}
# Links and Downloads

- Diana Deutsch's CD Musical Illusions and Paradoxes.http://philomel.com
- Download melody transition matrix here
- More on Gestalt processes of pattern perception: http://www.usask.ca/education/coursework/skaalid/theory/gestalt/gestalt.htm
- Huron Tone and Voice: a Derivation of Rules of Voice-Leading. http://music-cog.ohio-state.edu/Huron/Publications/huron.voice.leading.html
- Russo & Cuddy (1999) on melodic expectancy, with sound examples: http://www.acoustics.org/press/137th/russo.html
{% endcomment %}

{% include unit_postamble.md %}
