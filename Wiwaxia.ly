\version "2.14.2"
% #(set-global-staff-size 21) %Make staff comfortably large



\header
{
  title = "Wiwaxia"
  subsubtitle = "for A.R., a good friend"
  composer = "Matthew Dirks"

 copyright =  \markup{
   \center-column {
     \line {"© 2014 Matthew Dirks"}
     \line{"Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License"}}}
}


\score {

  \new PianoStaff
  \relative c'' 
  <<
    {
      \clef "treble"
      \tempo 8 = 136
      \time 2/4	
      \key g \major
      
				%Intro
      g8(\mp a16\cresc b16~ b ais b c	
      d b'8\mf fis16 a g e b
      d8)\tenuto d16 d \grace cis16 d8\tenuto d
      d2
      
      \bar "||"
      
      \mark \default

				%First Strain
	b16(\mf ais b g)~
	g <g b g'>\f <a c a'> <ais cis ais'>
	<b d b'> <e ais e'>8 b'16
	<c, d fis d'>8 <b b'>16\p <ais ais'>
	<< {\voiceOne <a a'>4.
	    <b d b'>16 <c e c'>
	    <d fis d'>4. d8\p}
	   \new Voice
	   {\voiceTwo
	    r16 d(\cresc dis e f fis) r8
	    r16 b( bes a aes8^\prall)\f r8}
	 >>
	\oneVoice
	e8 fis16 g16~ g fis g a
	b g8 fis16 e4
	ais,16(\cresc b8 c16
	<b d>) <ais cis>( <b d> <c e>
	<b d fis>) <ais cis e>( <b d fis> <c ees a>
	<b d g>8)\mf e16 c
	
				%Second half of first strain
	b16( ais b g)~
	g <g b g'>\f <a c a'> <ais cis ais'>
	<b d b'> <e ais e'>8 b'16
	<c, d fis d'>8 bes'\p
	<dis, fis b>8 <dis  fis b>16\< <dis~ fis~ c'~>
	<dis fis c'> <dis fis b>16 <dis fis a>8\mf
	<e g>4.\> r16\p g
	fis8 d b8. a16
	gis b fis' e~ e8. e16
	d cis d fis~ fis e fis a
      \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
      \mark \markup{\abs-fontsize #12 "To Coda"}

	g16 d cis d e d e fis
      
      
      \break
				%Strain B, treble cleff
      \mark \default
      \repeat volta 2
      {
	<< {\voiceOne g16\mf fis g d~ d d8 e16}
	   \new Voice
	   {\voiceTwo g,2} >>
	\oneVoice
	b8 d \grace bes'8 b16 a8 g16
	fis g a b \grace cis16 d8\accent \grace dis16 e8\accent
	b4 \grace b16 c8\accent \grace cis16 d8\accent
	<g, b>8(\p a16 <g b>~ <g b> ais b c
	d b8 fis16 a g e8)
	b16\cresc c8 d16 b16 g8 aes16
	a4~ a16 g(\mf a ais
				%Strain B, treble, second half
	b16 ais b g~ g) g a ais
	b\< e8 fis16 g8.\f fis16
	e8\> e e16 fis8 d16 b2\mp
	\grace ais'16 b16\p a8 g16 e4
	\grace ais16 b16 a8 g16 d4
	r16 <d, b'>8.~\mf <d b'>16 g16 
	<< {\voiceOne a8}
	   \new Voice
	   {\voiceTwo c,16 a16} >>
	\oneVoice
      }
				%Strain B, endings
	\alternative {
	  {<b g'>4 r4}
	  {<b g'>4 <g'' b d g>8\arpeggio r8}
	}
      
				%Strain C, first iteration
      \bar "||"
      \break
      \mark \default
      \key d \major
      r16\f <fis, a d>8 <fis a d>16~ <fis a d> fis eis fis
      r16 g8\marcato d'16~\marcato d cis8\marcato b16
      a16 a( b8\marcato) a16 a( b8\marcato)
      a16 b g fis~ fis4
      b8( a16 b~ b16 cis8 d16~
      d8. fis16~ fis4)
      e16 e( fis8\marcato) e16 fis d cis~
      cis4~ <cis a'>
				%Strain C, first iteration, second half
      r16 <fis, a d>8 <fis a d>16~ <fis a d> fis g gis
      r16 a8 b16 a b cis d
      r16  <a cis fis>8 <a cis fis>16~ <a cis fis> e' d8
      <e, b' cis>2
      b'16 e fis a,~ a d fis8
      r2
      fis8\marcato e\marcato b16 cis8 a16
      d8 r8 r4 %Strain C, first ending
      \bar "||"
      
				%Strain C, second iteration
      r16\f <fis, a d>8 <fis a d>16~ <fis a d> fis eis fis
      r16 g8\marcato d'16~\marcato d cis8\marcato b16
      a16 a( b8\marcato) a16 a( b8\marcato)
      a16 b g fis~ fis4
      b8( a16 b~ b16 cis8 d16~
      d8. fis16~ fis4)
      e16 e( fis8\marcato) e16 fis d cis~
      cis4~ <cis a'>
				%Strain C, second iteration, second half
      r16 <fis, a d>8 <fis a d>16~ <fis a d> fis g gis
      r16 a8 b16 a b cis d
      r16  <a c fis>8 <a c fis>16~ <a c fis> e' d8
      <fis, b cis>2
      %{ << {\voiceOne r16 a'8 b16 b a~ a8}
	 \new Voice
	 {\voiceTwo s16 <a, cis e>8.~ <a cis e>4} >>
      \oneVoice %}
      b16 e fis a,~ a d fis8
      r2
      fis8\marcato e\marcato b16 cis8 a16
      %Strain C, second iteration, second ending
      d8 c << {\voiceOne b4}
	      \new Voice
	      {\voiceTwo r16 d, e fis} >>
      \oneVoice
      \break			
      

      %Strain D (trio)
   \key g \major
   \mark \default
      \repeat volta 2
      {
	g16\mf fis' e fis\marcato r16 d\marcato r16 b\marcato
	r16 d\marcato r c~ c cis d8
	c16 c8 d16 r16 b8 a16
	<g b>16 <a c>8 <b d>16 r16 <g' b> <fis a> <g b>
	r4 <g, a c>4 
	<e g d'>8. <d fis e'>16 r16 g\p a ais
	b16 ais8 b16 ais16 b8 ais16
	b16 ais a g r\ff
	\ottava #1
	\set Staff.ottavation = #"8va"
	<g' b d g>8 <g b d g>16~
	<g b d g> g' e d e g g, b
	\stemDown \grace cis16 d8\marcato \grace dis16 e8\tenuto
	\stemNeutral
	\grace cis16 d8\marcato \grace dis16 e16 <g, b d g>~
	<g b d g> g' e d e g g, b
	d16 cis c b r <g b d g>8 <a c ees a>16~
	<a c ees a>16 a' fis ees <g, a c>4
	<e g d'>8. <d fis e'>16 \ottava #0 r16 g,\mf a ais
	b16 fis'8 e16 d g, a ais
      }
   
				%Strain D, Endings
   \alternative {
     {b16 ais a g~ g8 r8}
     {b16 ais a g~ g4\<} %Start cresc. for LH
   }
				%Strain E
   \break
   \mark \default
   r16\ff <b d g>8 <b d g>16~ <b d g> b ais b
   r16 c8\marcato g'16~\marcato g fis8\marcato e16
   d16 d( e8\marcato) d16 d( e8\marcato)
   d16 e c b~ b4
   e8 d16 e~ e16 fis8 g16~
   g8. b16~ b4
   a16 a( b8\marcato) a16 b g fis~
   fis4~ <fis d'>
				%Strain E, second half
   
   r16 <b, d g>8 <b d g>16~ <b d g> b c cis
   r16 d8 e16 d e fis g
   r16 <d fis b>8 <d fis b>16~ <d fis b> a' g8
   <b, e fis>2
				%Put closing four measures on their own line. 
				%(Makes the D.C. al Coda look nicer.)
   \break
   e16 a b d,~ d g b8
   e,16 a b d,~ d g b8
   << {\voiceOne \stemUp b8\marcato a\marcato e16 fis8 d16 \stemNeutral}
      \new Voice
      {\voiceTwo r8 <a d fis> r8 <fis a> } >>
   \oneVoice
   <g b g'>2

   \break
   
%Intro variation
   \bar "||"
   g8(\mp a16\cresc b16~ b ais b c	
   d b'8\mf fis16 a g e8 
      d8)\tenuto d16 d \grace cis16 d8\tenuto d
   d2
   \once \override 
   Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
   \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
   \mark \markup{\abs-fontsize #12 "To A"}

   %Coda
   \bar "||"
   s2
   \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
   \mark \markup{\musicglyph #"scripts.coda"}
   g4. r16 
   
   \tempo "Slower" 8 = 70
   
   g16
   \bar "||"
   fis8 d b8.\fermata \noBeam a16
   gis b fis' \tieDown e~ e8.\fermata \noBeam \tieNeutral
   e16 ^\markup{"ritardando"}
   d cis d fis~ fis e fis a g4\fermata 
   \ottava #1 g'4\fermata \ottava #0
   \bar "|." %Final bar line
 } %End treble cleff
  
  \new Staff
  {
    \clef "bass"
    \key g \major
				%tempo and time set in treble clef, above
    r2 r2 r2
    <d= d'>8 <c c'> <b b'> <a a'> % "d=" ensures proper octave
				%Suppress initial repeat bar at start of first
				%strain; replace with double
    \once \set Staff.whichBar = "||" 
				%First strain
    <g g'>8 <g' b d> <g b d> <g, g'>
    <fis fis'> <e e'> <fis' a c> <g g'>
    <fis fis'> <e e'> <b b'> <g g'>
    <a a'> <fis fis'> <e e'> r8
    <e e'> <e' g b> <b, b'> <e' g b>
    <e, e'> <e' g b> <b b'>16( <g g'>8 <fis fis'>16
    <dis dis'>4) \clef treble r16 g''16( fis e
    d16) \clef bass <cis,, cis'>( <d d'> <ees ees'> <g g'>8) <fis' c' e>
    <g, g'>8 <g' b d> <g b d> <g, g'>
    <fis fis'> <e e'> <fis' a c>4
    <b,, b'>8 <dis dis'> <fis fis'> <b b'>
    <g g'> <dis dis'> <e e'> <fis fis'>
    <b, b'> <d' fis b> <d, d'> <d' fis b>
    <gis, gis'> <gis' b e> <gis b fis'> <cis,, cis'>
    <d d'> <fis' a d> <e, e'> <fis' a c>
    <g, b'>16 r8. r4     
				%Strain B
    <g=, g'>8 <g' b d>
    <d, d'> <g' b d>
    <g, g'> <g' b d>
    <d, d'> <ees ees'>16 <f f'>
    <fis fis'>8 <fis' a c> <fis a d> <fis a c>
    <d g b> <g, g'> <fis fis'> <d d'>
    <e e'> <e' g b> <e g b> <e, e'>
    <e' g b> <e g b> <e, e'> <e' g b>
    <b b'> <bes bes'> <a a'> <aes aes'>
    <g g'> <d d'> <e e'> <fis fis'>
				%Strain B bass clef, second half
    <g g'> <g' b d> <g b d> <g, g'>
    <e e'> <e' gis d'> <g,! g'> <e e'>
    <d d'> <d' fis b> <b, b'> <d' fis b>
    <a a'> <e e'> <fis fis'>4
    e16( g a b c4)
    e,16( g a c b4)
    <b, b'>8 <b' d g> <d, d'> <fis fis'>
    <g g'> <d d'> <g, g'> r %Strain B, first ending
    <g' g'> <d d'> <g, g'> r %Strain B, second ending
    
				%Strain C, first iteration
    \key d \major
    <d' d'>8 <fis' a d> <d d'> <cis cis'>
    <b b'> <g' b d> <g, g'> <gis' b d>
    <a cis e> <d, d'> <cis cis'> <g g'>
    <fis fis'>( <g g'> <a a'>) <fis' a d>
    <d d'> <cis cis'> <b b'> <a a'>
    <fis fis'> <fis' a d> <d, d'> <fis' a d>
    <cis cis'> <gis' b d> <b, b'> <gis gis'!>
    <a a'> <a, a'> <b b'> <cis cis'>
    <d d'> <fis' a d> <d d'> <gis, gis'>
    <a a'> <a' cis e> <e, e'> <a' cis e>
    <fis, fis'> <fis' a cis> <cis, cis'> <gis'' b d>
    <cis, cis'> <a a'> <b b'>4
    <b b'>8 <fis' a cis> <a, a'> <cis, cis'>
    \ottava #-1
    \set Staff.ottavation = #"8vb"
    b=,,16 e fis a,~ a d fis8
    \ottava #0
    <fis fis'> <fis' a cis> <a, a'> <e' g cis> %Strain C, first ending
    <d fis a d>8 r8 \grace gis16 a4
    
				%Strain C, Second Iteration
    <d,, d'>8 <fis' a d> <d d'> <cis cis'>
    <b b'> <g' b d> <g, g'> <gis' b d>
    <a cis e> <d, d'> <cis cis'> <g g'>
    <fis fis'>( <g g'> <a a'>) <fis' a d>
    <d d'> <cis cis'> <b b'> <a a'>
    <fis fis'> <fis' a d> <d, d'> <fis' a d>
    <cis cis'> <gis' b d> <fis, fis'> <gis gis'!>
    <g a'> <b b'> <cis cis'> <a a'>
    <d d'> <fis a d> <fis, fis'> <e e'>
    <a, a'> <a'' cis e> <e, e'> <a' cis e>
    <fis, fis'> <fis' a c> <c, c'> <gis'' b d>
    <cis, cis'> <ais ais'> <b b'>4
    <b b'>8 <fis' a cis> <a, a'> <cis, cis'>
    \ottava #-1
    \set Staff.ottavation = #"8vb"
    b=,,16 e fis a,~ a d fis8
    \ottava #0
				%Strain C, second ending
    <fis fis'> <fis' a cis> <a, a'> <e' g cis>
    <d fis a d>8 <d, d'> <e e'> <fis fis'>
    
				%Strain D
    \key g \major
    <g g'>8 <g' b d> <g b d> <g, g'>
    <fis fis'> <e e'> <fis' a c> <fis a c>
    <a, a'> <fis' a c> <d, d'> <fis' a c>
    <d, d'>16 <e e'>8 <g g'>16 r4
    <g g'>8 <g' a c>\noBeam <c,, c'> <g'' a c>\noBeam
    <g, g'> <gis gis'> <a a'> <cis, cis'>
    <d d'> <gis' b d> <gis b d> <gis b d>
    <d d'>16 <cis cis'> <c c'> <b b'> <d, d'>8 <g' b d>
    <g, g'> <g' b d> <d, d'>16 <g, g'> <a a'> <b b'>
    <c c'> <d d'> <e e'> <fis fis'> <g g'>8 <d d'>
    <g g'> <g' b d> <d, d'> <g' b d>
    <b, b'>16 <ais ais'> <a a'> <g g'> <d d'>8 <g' b d>
    \ottava #-1
    <a,, a'>16 <gis gis'> <a a'> <b b'> \ottava #0 <c c'> <a' a'>8 <e e'>16
    <g g'>16 <fis fis'> <d d'> <a a'> <c c'>8 <cis cis'>
    <d d'> <gis' b d> <e e'>16 <d d'> <b b'> <g! g'>
				%Strain D, endings
    <b b'>8 <d, d'> <g g'> <g, g'> %First ending
    <b' b'>8 <d, d'> <e e'>16 <d d'> <e e'> <fis fis'> %2nd ending
    
				%Strain E
    <g=, g'>16 <fis fis'> <g g'> <d d'>~ <d d'> <d d'>8 <e e'>16
    <b b'>8 <d d'> <b' b'>16 <a a'>8 <g g'>16
    <fis fis'>16 <g g'> <a a'> <b b'> <d d'>8 <e e'>
    <b b'>8 <b' d g> <d, d'> <b' d g>
    <g, g'>8 <a a'>16 <b b'>~ <b b'> <ais ais'> <b b'> <c c'>
    <d d'>16 <b b'>8 <fis fis'>16
    <a a'> <g g'> <e e'>8
    <c' c'>8 <b' d g> <b, b'> <b' d g>
    <a, a'>8 <d, d'> <fis fis'>16. <g g'>32 <a a'>16 <ais ais'>
				%Strain E, second half
    <b b'>16 <ais ais'> <b b'> <g g'>~ <g g'> <g g'> <a a'> <ais ais'>
    <b b'> <e e'>8 <fis fis'>16 <g g'>8. <fis fis'>16
    <e e'>8 <g d' e> <e e'>16 <fis fis'>8 <d d'>16
    <b b'>8\tenuto <e, e'>\tenuto <fis fis'>16 g a ais
    b16 a8 g16 e g a ais
    b a8 g16 d4
    r16
    << {\voiceOne \stemUp <d'-4 b'-1>8.~ <d b'>16 g a-1 \stemNeutral}
       \new Voice
       {\voiceTwo s4 s16 c,16-4 a16-5} >>
    \oneVoice
    <b-4 g'-1>8 <d, d'> <g, g'>4

				%Intro variation
    r2
    g''8-3( a16 b16~ b ais-3 b c	
    \ottava #1
    d-4 b'8-1 fis16-2 a-1 g-2 \ottava #0 e-1 b-2
    <d, d'>8) <c c'> <b b'> <a a'>

				%Coda
    s2
    <g b'>8 <d d'> <g, g'> r8
    \set Staff.pedalSustainStyle = #'bracket
    d''16\sustainOn fis a d fis8.\fermata r16\sustainOff
    e,16\sustainOn gis b \tieDown d~ d8.\fermata r16\sustainOff \tieNeutral
     <gis, b d>4\sustainOn  <fis a c>\sustainOff\sustainOn
    <d g b>16\fermata\sustainOff\sustainOn ais\fermata b\fermata d\fermata
    g,,4\fermata
  }
  
  
>>

\midi{}
\layout{}  
}
