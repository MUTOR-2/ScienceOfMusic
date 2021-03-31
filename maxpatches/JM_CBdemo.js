// Copyright John MacCallum 2006
// All Rights Reserved
// 


inlets = 2;
outlets = 2;

var mysketch = 0;
var fixedFreq = 440.0;
var movingFreq = 220.0;
var fixedAmp = 1.;
var movingAmp = 1.;
var fixedAmps = new Array();
var movingAmps = new Array();
var numFixedPartials = 11; // plus the fundamental makes 12
var numMovingPartials = 11; // plus the fundamental makes 12

for (i = 0; i < numFixedPartials; i++) {
	fixedAmps[i] = fixedAmp / (i + 2);
}
for (i = 0; i < numMovingPartials; i++) {
	movingAmps[i] = movingAmp / (i + 2);	
}

var lowerFreqLimit = 200.
var upperFreqLimit = 900;

var infoBarHeight = 24; // pixles

var complex_bool  = 0;
var criticalBand_bool = 1;

var newbg = 1;
var newfg = 1;

var bgColor = new Array(.2, .2, .2);
var fixedColor = new Array(1., 0., .886, 1.);
var movingColor = new Array(0., .866, 1., 1.);
var cbColor = new Array(.659, .714, .773, 0.25);
var infoColor = new Array(1., 1., 1., 1.);

sketch.default2d();
sketch.fsaa=0;

function reset() {
	init();
}

function domain(x1, x2) {
	lowerFreqLimit = x1;
	upperFreqLimit = x2;
	newbg = 1;
	draw();
}

function ftox(f,a){
	return ((f-lowerFreqLimit)*2.0*a/(upperFreqLimit - lowerFreqLimit))-a;
}

function atoy(amp) {
	//return (2 * amp) - 1.;
	return ((1. - infoBarLocation()) * amp) + infoBarLocation();
}

function msg_float(f) {
	if (inlet == 0)
		setMovingFreq(f);
	if (inlet == 1)
		setFixedFreq(f);
}

function msg_int(i) {
	if (inlet == 0)
		setMovingFreq(i);
	if (inlet == 1)
		setFixedFreq(i);
}

function outputFixed() {
	if (complex_bool) {
		var ar = new Array();
		for (i = 0; i < numFixedPartials; i++) {
			ar[i * 2] = fixedFreq * (i + 1);
			ar[(i * 2) + 1] = fixedAmps[i];
		}
		outlet(1, ar);
		return;
	}
	outlet(1, fixedFreq, fixedAmp);
}

function outputMoving() {
	if (complex_bool) {
		var ar = new Array();
		for (i = 0; i < numMovingPartials; i++) {
			ar[i * 2] = movingFreq * (i + 1);
			ar[(i * 2) + 1] = movingAmps[i];
		}
		outlet(0, ar);
		return;
	}
	outlet(0, movingFreq, movingAmp);
}

function list(a) {
	var a = arrayfromargs(messagename, arguments);
	
	if (inlet == 0) {
		if (a.length == 2) {
			// assume freq, amp for fundamental
			setMovingFreq(a[0]);
			setMovingAmp(a[1]);
		}
		if (a.length > 2) {
			//assume the first value is for the fundamental.
			movingAmp = a[0];
			for (i = 1; i < a.length; i++) {
				movingAmps[i - 1] = a[i];
			}
		}
		outputMoving();
	}	
	if (inlet == 1) {
		if (a.length == 2) {
			// assume freq, amp for fundamental
			setFixedFreq(a[0]);
			setFixedAmp(a[1]);
		}
		if (a.length > 2) {
			//assume the first value is for the fundamental.
			fixedAmp = a[0];
			for (i = 1; i < a.length; i++) {
				fixedAmps[i - 1] = a[i];
			}
		}
		outputFixed();
	}
	newbg = 1;
	draw();
		
}

function setFixedFreq(f){
	if ( f + (cb(f) / 2) > upperFreqLimit ) {
		fixedFreq = upperFreqLimit - (cb(f) / 2);
		newbg = 1;
		draw();
		return;
	}
	if ( f - (cb(f) / 2) < lowerFreqLimit ) {
		fixedFreq = lowerFreqLimit + (cb(f) / 2);
		newbg = 1;
		draw();
		return;
	}

	fixedFreq = f;
	newbg = 1;
	draw();
	outputFixed();
	//outlet(1, fixedFreq, fixedAmp);
}

function setMovingFreq(f){
	if ( f  > upperFreqLimit ) {
		movingFreq = upperFreqLimit;
		newbg = 1;
		draw();
		return;
	}
	if ( f < lowerFreqLimit ) {
		movingFreq = lowerFreqLimit;
		newbg = 1;
		draw();
		return;
	}
	movingFreq = f;
	newbg = 1;
	draw();
	outputMoving();
	//outlet(0, movingFreq, movingAmp);
}

function setFixedAmp(a) {
	if(a > 1.)
		fixedAmp = 1.;
	else if(a < 0.)
		fixedAmp = 0.;
	else
		fixedAmp = a;

	setFixedAmps();
	
	newbg = 1;
	draw();
	outputFixed();
	//outlet(0, fixedFreq, fixedAmp);
}

function setMovingAmp(a) {
	if(a > 1.)
		movingAmp = 1.;
	else if(a < 0.)
		movingAmp = 0.;
	else
		movingAmp = a;
	
	setMovingAmps();

	newbg = 1;
	draw();
	outputMoving();
	//outlet(0, movingFreq, movingAmp);
}

function setFixedAmps() {
	for (i = 0; i < numFixedPartials; i++) {
		fixedAmps[i] = fixedAmp / (i + 2);
	}
	newbg = 1;
	draw();
	outputFixed();
	//outlet(0, fixedFreq, fixedAmp);
}

function setMovingAmps() {
	for (i = 0; i < numMovingPartials; i++) {
		movingAmps[i] = movingAmp / (i + 2);	
	}
	newbg = 1;
	draw();
	outputMoving();
	//outlet(0, movingFreq, movingAmp);
}

function complex(i) {
	complex_bool = i;
	newbg = 1;
	draw();
	outputFixed();
	outputMoving();
}

function criticalBand(i) {
	criticalBand_bool = i;
	newbg = 1;
	draw();
}

var mysketch;

function mydraw(){
	
	if(newbg==1 || newfg==1) {
		if(!mysketch) {
		 	var sk = sketch.size;
			mysketch= new Sketch(sk[0],sk[1]);
			mysketch.default2d();
			mysketch.fsaa=0;
			mysketch.aspect = sk[0]/sk[1];
		}
	}
	if(newbg==1) {
		mysketch.glclearcolor(bgColor);
		mysketch.glclear();

		// draw info line.
		mysketch.glcolor(infoColor);
		mysketch.moveto(-mysketch.aspect, infoBarLocation());
		mysketch.lineto(mysketch.aspect, infoBarLocation());

		// draw fixed freq.
		mysketch.glcolor(fixedColor);
		mysketch.moveto(ftox(fixedFreq, mysketch.aspect), infoBarLocation());
		mysketch.lineto(ftox(fixedFreq, mysketch.aspect), atoy(fixedAmp));
		
		// draw moving freq.
		mysketch.glcolor(movingColor);
		mysketch.moveto(ftox(movingFreq, mysketch.aspect), infoBarLocation());
		mysketch.lineto(ftox(movingFreq, mysketch.aspect), atoy(movingAmp));

		// draw critical band
		if(criticalBand_bool) {
			mysketch.glcolor(cbColor);
			var oneHalfCB = cb(fixedFreq) / 2;
				
			mysketch.quad(ftox(fixedFreq - oneHalfCB, mysketch.aspect), infoBarLocation(), 0, ftox(fixedFreq - oneHalfCB, mysketch.aspect), atoy(fixedAmp), 0, ftox(fixedFreq + oneHalfCB, mysketch.aspect), atoy(fixedAmp), 0, ftox(fixedFreq + oneHalfCB, mysketch.aspect), infoBarLocation(), 0);
		}

		if (complex_bool == 1) {
			for (i = 0; i < numMovingPartials; i++) {
				mysketch.glcolor(fixedColor);
				mysketch.moveto(ftox(fixedFreq * (i + 2), mysketch.aspect), infoBarLocation());
				mysketch.lineto(ftox(fixedFreq * (i + 2), mysketch.aspect), atoy(fixedAmps[i]));

				mysketch.glcolor(movingColor);
				mysketch.moveto(ftox(movingFreq * (i + 2), mysketch.aspect), infoBarLocation());
				mysketch.lineto(ftox(movingFreq * (i + 2), mysketch.aspect), atoy(movingAmps[i]));
				
				if (criticalBand_bool) {
					mysketch.glcolor(cbColor);
					var oneHalfCB = cb(fixedFreq * (i + 2)) / 2;
				
					mysketch.quad(ftox((fixedFreq * (i + 2)) - oneHalfCB, mysketch.aspect), infoBarLocation(), 0, ftox((fixedFreq * (i + 2)) - oneHalfCB, mysketch.aspect), atoy(fixedAmps[i]), 0, ftox((fixedFreq * (i + 2)) + oneHalfCB, mysketch.aspect), atoy(fixedAmps[i]), 0, ftox((fixedFreq * (i + 2)) + oneHalfCB, mysketch.aspect), infoBarLocation(), 0);
				}
			}
		}

		

		newbg = 0;
	}
	
	sketch.glclearcolor(0,0,0);
	sketch.glclear();
	sketch.glcolor(1,1,1,1);	
	sketch.copypixels(mysketch);

	var sk = sketch.size;
	sketch.aspect = sk[0]/sk[1];
	
	// draw info text at the bottom of the window.
	sketch.fontsize(9);
	
	// fixed freq
	sketch.glcolor(fixedColor);
	sketch.textalign("left", "bottom");
	sketch.moveto(-sketch.aspect, ((3 / sketch.size[1]) * 2.0) - 1);
	sketch.text(" Fixed frequency: "+fixedFreq.toFixed(2)+" ("+Notename(fixedFreq)+")");

	// moving freq
	sketch.glcolor(movingColor);
	sketch.textalign("left", "bottom");
	sketch.moveto(-sketch.aspect, ((14 / sketch.size[1]) * 2.0) - 1);
	sketch.text(" Moving Frequency: "+movingFreq.toFixed(2)+" ("+Notename(movingFreq)+")");

	// difference
	sketch.glcolor(infoColor);
	sketch.textalign("left", "bottom");
	sketch.moveto(0, ((14 / sketch.size[1]) * 2.0) - 1);
	sketch.text(" Beat Frequency: "+Math.abs(movingFreq - fixedFreq).toFixed(2)+"Hz ");
}

function infoBarLocation() {
	return ((infoBarHeight / sketch.size[1]) * 2.0) - 1;
}

function cb(f) {
	return (0.108 * f) + 24.7;
	// B. C. J. Moore and B. R. Glasberg, ``A revision of Zwicker's loudness  model,'' Acta Acustica, vol. 82, pp. 335-345, 1996.
}

function calcInterval(f, i){
	return f * (Math.pow(Math.pow(2, 1/12), i));
}

function draw() {
	mydraw();
	refresh();
}

function onresize() {
	mysketch = null;
	newbg = 1;
	draw();
}

// Thanks to PF Baisnee for the original C code base this is derived from
const A440=440.0;
const C261=261.6255661;
const SEMITONE=1.059463094;
const OCTAVESIZE=12;
const OCTAVEBASE=3;
/* ln(SEMITONE) */
const SEMIFAC=0.057762265046662;
const AASMIDINOTE=69;
const CASMIDINOTE=60;
const notenames= ["c","c#","d","d#","e","f","f#","g","g#","a","a#","b"];
const frenchnotenames= new Array("do","do#","re","re#","mi","fa","fa#","sol","sol#","la","la#","si");

function nearestnote(f)
{
   var i;
	i = Math.log(f/C261)/Math.log(SEMITONE)+1.5;  // this was set to 0.5 in Adrian Freed's orig. code--bug?
   return new Array(
   	(Math.floor(i)+OCTAVESIZE*OCTAVEBASE-1)%OCTAVESIZE, //note
   
    Math.floor((Math.floor(i)+OCTAVESIZE*OCTAVEBASE-1)/OCTAVESIZE), //octave
    i+CASMIDINOTE, //midi note
    Math.floor((i%1)*100));//cents
 }

var ns="American";
var notenamestyles= new Array("American", "Solfege", "Columbia", "FractionalMIDI");
function notenamestyle(n)
{
//	if(n in notenamestyles)
	{
ns =n;
		draw();
	}
}
function Notename(f)
{
	const style =ns;
if(f<=0)
	return "";
	const nn = nearestnote(f);
	const note = nn[0];
	const octave = nn[1];
	const midi =nn[2];
	const cents = nn[3];
		   if(style=="Solfege")
	    	return frenchnotenames[note]+octave;
	    else if(style=="American")
	    	return notenames[note]+octave;
	    else if(style=="Columbia")
	    	return (octave+5+note/100.0).toFixed(3);
	    else if(style=="FractionalMIDI")
	    	return "m"+midi.toFixed(3);
	
}

function init() {
	bgColor = new Array(.1, .1, .4);
	fixedColor = new Array(.3, .3, .6, 1.);
	movingColor = new Array(.3, .3, 1., 1.);
	cbColor = new Array(.3, .3, .6, 0.25);
	infoColor = new Array(.3, .3, .6, 1.);	
	
	fixedFreq = 440.0;
	movingFreq = 220.0;
	fixedAmp = 1.;
	movingAmp = 1.;
	fixedAmps = new Array();
	movingAmps = new Array();
	numFixedPartials = 11; // plus the fundamental makes 12
	numMovingPartials = 11; // plus the fundamental makes 12

	for (i = 0; i < numFixedPartials; i++) {
		fixedAmps[i] = fixedAmp / (i + 2);
	}	
	for (i = 0; i < numMovingPartials; i++) {
		movingAmps[i] = movingAmp / (i + 2);	
	}

	lowerFreqLimit = 200.
	upperFreqLimit = 900;

	infoBarHeight = 24; // pixles

	complex_bool  = 0;
	criticalBand_bool = 1;

	newbg = 1;

	outputFixed();
	outputMoving();

	draw();
}

function interval(s) {
	switch (s) {
		case "Unison":
			movingFreq = fixedFreq;
			break;
		case "Octave Above":
			movingFreq = fixedFreq * 2;
			break;
		case "Octave Below":
			movingFreq = fixedFreq * .5;
			break;

		case "Minor Second Above":
			movingFreq = calcInterval(fixedFreq, 1);
			break;
		case "Major Second Above":
			movingFreq = calcInterval(fixedFreq, 2);
			break;
		case "Minor Third Above":
			movingFreq = calcInterval(fixedFreq, 3);
			break;
		case "Major Third Above":
			movingFreq = calcInterval(fixedFreq, 4);
			break;
		case "Perfect Fourth Above":
			movingFreq = calcInterval(fixedFreq, 5);
			break;
		case "Tritone Above":
			movingFreq = calcInterval(fixedFreq, 6);
			break;
		case "Perfect Fifth Above":
			movingFreq = calcInterval(fixedFreq, 7);
			break;
		case "Minor Sixth Above":
			movingFreq = calcInterval(fixedFreq, 8);
			break;
		case "Major Sixth Above":
			movingFreq = calcInterval(fixedFreq, 9);
			break;
		case "Minor Seventh Above":
			movingFreq = calcInterval(fixedFreq, 10);
			break;
		case "Major Seventh Above":
			movingFreq = calcInterval(fixedFreq, 11);
			break;
		
		case "Minor Second Below":
			movingFreq = calcInterval(fixedFreq, -1);
			break;
		case "Major Second Below":
			movingFreq = calcInterval(fixedFreq, -2);
			break;
		case "Minor Third Below":
			movingFreq = calcInterval(fixedFreq, -3);
			break;
		case "Major Third Below":
			movingFreq = calcInterval(fixedFreq, -4);
			break;
		case "Perfect Fourth Below":
			movingFreq = calcInterval(fixedFreq, -5);
			break;
		case "Tritone Below":
			movingFreq = calcInterval(fixedFreq, -6);
			break;
		case "Perfect Fifth Below":
			movingFreq = calcInterval(fixedFreq, -7);
			break;
		case "Minor Sixth Below":
			movingFreq = calcInterval(fixedFreq, -8);
			break;
		case "Major Sixth Below":
			movingFreq = calcInterval(fixedFreq, -9);
			break;
		case "Minor Seventh Below":
			movingFreq = calcInterval(fixedFreq, -10);
			break;
		case "Major Seventh Below":
			movingFreq = calcInterval(fixedFreq, -11);
			break;
	}
	newbg = 1;
	draw();
	outputFixed();
	outputMoving();
}

draw();