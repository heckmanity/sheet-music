\version "2.18.0"

\header {
  tagline = ""
}


subP =
#(make-dynamic-script
  (markup #:line
          (#:with-dimensions '(0 . 0) '(0 . 0)
                             #:right-align
                             #:normal-text
                             #:italic "sub."
                             #:dynamic "p")))

STARtwo = {
    \key c \major
    \time 6/8
    \clef treble
    \set Score.skipBars = ##t
    \override Staff.MultiMeasureRest.expand-limit = #1
}
MvtII = \relative c''{ 
    \STARone
    \tempo "Lento" 4 = 52
    
      r2 r8 bes(\p\noBeam c ees
      c2~) c8 bes( aes[ ees] 
      f2) aes4( bes
    \time 6/4
      f2) c'4( ees,2.)
    \bar "||"
    \break
    
    \tempo "Allegro Molto" 4 = 132
    \time 4/4 \numericTimeSignature
      f1->~
      f4 r r2
      r8 g(\noBeam aes) ees'~ ees[ ees] g,4
      f1
      r8 g(\noBeam aes) ees'~ ees[ bes] c g'
      f1 \break
      r4 ges(\< aes f)
      f2(\> ees) 
      r4\! aes(\< bes ges)
      f2(\> ees)
      r2\! e4(\< dis)
      dis2(\> cis)
      r2\! b'4(\< e,) \break
      f2( aes)
      r2\! des,(\mf\<
      ees2.\> bes4)
      r2\! e2(\< 
      ees2.) bes4(
      c1)\f\>
      
      R1*10\p
      \break
      
      \tuplet 3/2 { r8 ees,(\mp[ f] }
        \scaleDurations 2/3 {
            g8[ aes bes] c[ bes aes] g[ f ees]
        }
      f2) r2
      \tuplet 3/2 { r8 ees'([ des] }
        \scaleDurations 2/3 {
            c8[ bes aes] g[\< f ees] f[ g aes]
        }
      bes2)\mf cis4( ais
      cis2 b)
      ais4 eis( fis ais) \break
      eis'2(\< dis)
      \tupletUp \tuplet 3/2 4 { r8\! b4\f\< b b8~ }
        \scaleDurations 2/3 {
            b8[ b b] b[ b b]
        } \tupletNeutral
      cis2(\> gis)
      r4\! e'8( dis) e-.[ gis-.] e( dis) \break
      cis8( b) gis-.[ b-.] cis( eis) cis([ b)]
      \tuplet 3/2 4 { r8 cis4\< cis cis8~ }
        \scaleDurations 2/3 {
            cis8[ cis cis] cis[ cis cis]
        }
      cis2(\> ais)
      \tupletUp \tuplet 3/2 4 { r8\! cis4\< g a8~ }
        \scaleDurations 2/3 {
            a8[ b cis] dis[ e fis]
        } \tupletNeutral
      g2(\! ees) \break
      a2.( bes4
      a1~\<
      a1)
      R1\ff
    \time 5/4
      R1*5/4
    \time 4/4 \numericTimeSignature
      R1*9
      
    \pageTurn
      
      d,16\p d d d e8 d16 d e[ e fis fis] e e d d
      cis cis cis cis b8[ fis16 fis] e e fis fis a[ a fis fis]
      e4-> d8[ e->~] e[ g-.] a( g)
      fis1( \break
      b)
      e,16[ e e e] a8 e16 e e[\< e a a] b b cis cis
      d4\mf b8 cis~ cis16[ cis b b] a a gis gis
      fis2( b \break
      gis1)\>
      dis'2 r2\!
      e(\< fis)\>
      gis(\< fis)\>
      cis16\! cis cis cis e8[ cis16 cis] cis\< cis e e fis[ fis fis fis]
      a4\f e cis8 fis~ fis4 \break
      
      r8 fis(\subP\noBeam gis b,) cis a'~ a4
      r8 fis(\noBeam b[ e,)] cis\noBeam fis4.
      dis2~\> dis16 dis dis dis cis[ cis d d]
      gis,2\! r \break
      R1
      r8 aes8(\mp\noBeam ees' ges,) f( des' aes[ f)]
      e4( fis cis2~
      cis) b~
      b\> b4( a)\p \break
      
      R1*2
      r8 b'\mp\noBeam fis'([ e] fis) b, fis'4
      r8 d\noBeam\< fis([ e] fis) b fis4
      r8\! g8\noBeam\mf d( c g[) c] d4
      r8 ees\noBeam( g[ f] g4 a8[ b] \break
      a1)\< 
      e8\f r r4 r2
      r2 r4 \tuplet 3/2 { a,8( g a }
      cis8 c~ \tuplet 3/2 { c8) a( bes } f'4 e)
      r2 r4 \tuplet 3/2 { e8( d e } \break
      f8) a, \tuplet 3/2 { e'8( d e } g4 f)
      g2 r4 \tuplet 3/2 { d8( f g }
      a8 g~ \tuplet 3/2 { g8) d( f } a4 g)
      bes4. a8~ a4 g8 bes,
      f'4( d c bes
      a8 g~ g4) r \tuplet 3/2 { c8 g c } \break
      f4(\< g a bes)
      c2.\ff r4
      R1*3
      r8 g,8\noBeam\mf( aes)[ ees']~ ees ees g,4
      f1
      R1
      
    \pageTurn
      
      \tuplet 3/2 { r8 ees'[\mp\< des] }
        \scaleDurations 2/3 {
            c8[ bes aes] g[ f ees] f[ g aes]
        }
      bes2(\mf\< des4 bes)
      des2(\> ces)
      bes4\! f(\< ges bes)
      f'2\f( ees) 
      R1 \break
      r8 fis,8(\mf g[) e'~] e e g,4
      g( a2.)
      r8 fis8_( g[) e'~] e a,( b)[ g']
      g4(\< bes2.)
      aes4(\> g2.) \break
      
    \time 6/8
      f4.\p r
      R2.
    \time 3/4
      r8 f(\mf\noBeam g) aes d,[( f])
    \time 2/4
      g[ c,]( f)[ ees]
    \time 6/8
      d4. r \break
      
    \time 4/4 \numericTimeSignature
      r4 r8 g,_(\mp aes[) ees'] d4
      f8(\< aes) r4 r8 des,\noBeam aes'[ bes] 
      g(\> c,) r4\! r8 g'\noBeam\< f4 
      cis8\!( e) r4 r8 cis\noBeam e[ fis]
      ais( cis,) r4 r8 cis\noBeam\< e cis \break
      g'8->\f r r4 r2
      R1*3
      ees16\mp ees ees ees ees[ ees c8] 
        f16[ f g g] f f g g 
      a8 a16 a b[ b b b] a8 f ees[ c]
      d r r4 r2 \break
      
      e16 e f f g[ g a8] e[ f] e d
      b8 r r4 r2
      f'16[ f f f] g8[ f16 f] e8[\< d] g d
      e\mf r r4 r r16 fis( e) fis
      gis8 r r4 r4 r16 fis( e) b \break
      cis8 r r4 r4 r16 dis( e) b
      cis8 r r4 r r16 e gis,( e)
      fis2\subP\> r2\!
      r8 a_( b[) g'~] g g a[ e]
      g( e fis4) r2 \break
      
      r2 r4 ees,\<
      ges\mf\>( f ees d)
      ees8(\! aes~ aes[ bes~] bes[\< c~] c d)
      ees4 bes'( aes ges
      f)\f r4 r2
      R1 \break
      
      f,16\p\< f f f f[ f g8] aes[ f16 f] f[ f g8]
      g(\f a) r4 r2
    \time 6/8
      R2.
    \time 4/4 \numericTimeSignature
      R1
    \time 6/8
      R2.
    
    \pageTurn
    
      r4. r8 r \tuplet 3/2 { a16\p a a }
      d4.( c)
    \time 4/4 \numericTimeSignature
      a4\< b8( c~ c4) d4(
      bes)\mf r r r8 \tuplet 3/2 { f16 f f }
      f4 r r r8 \tuplet 3/2 { a16 a a } \break
      r8 b16( fis) gis8([ e')] r fis16( b,) gis8( e')
    \time 3/4
      a[ cis,]( b) gis' b,[( fis'])
    \time 4/4 \numericTimeSignature 
    \once \override TextSpanner.bound-details.left.text = \markup { \small\italic "rit." }
      gis2(\<\startTextSpan b
      a4\f)\stopTextSpan r^\markup{\small\italic "a tempo"} r2
      R1 \break
      r8 \tuplet 3/2 { f,16\subP f f } f4~
        f8[ \tuplet 3/2 { aes16 aes aes] } f4~ 
      f4\< ees( d\> ees)
      c\! r r r8 \tuplet 3/2 { aes'16_\markup{\small\italic "cresc."} aes aes }
      bes8( c) r4 r r8 \tuplet 3/2 { f,16 f aes }
      aes8(\< ges) r f\noBeam aes( ges) r f16( c') \break
      
    \time 2/4
      des8(\f bes) aes[ f]
    \time 4/4 \numericTimeSignature
      ees1\>
      r2\p r4 bes'(
      aes\< ges ees2\>)
      r2\! r4 des'(
      ees1^\markup{\small\italic "rit."}\>) \break
    \time 6/4
      r4\! f2\<( ges2.\>
    \bar "||"
    
    \tempo "Lento (Tempo I)" %4 = 52
    \time 4/4 \numericTimeSignature
      f2) r\!^\markup{\small\italic "add mute"}
      R1*2
    \time 6/4
      R1.
    \bar "||"
    
    \tempo "Allegro Molto (Tempo II)" %4 = 132
    \time 4/4 \numericTimeSignature
      R1
      r2 r4 c^\markup{\small\italic "muted"} \break
      bes8(\< aes f2) ees4\!(
      c2)\> r4\! aes'4
      bes8(\< aes bes2) c4\!
      ees,( f2.)\>
      R1\!
      r4
      bes4~\<( \tuplet 3/2 { bes4 aes des) }
      c8\!( f,~ f2.)\> \break
      r4\! ees'4\<(~ \tuplet 3/2 { ees4 des bes }
      f'8\! c~ c2.\>)
      R1*2\!
      r2 \tuplet 3/2 { r4 e,( a }
      fis'8 b,~ b2.)\< 
      r2\mp r4 \tuplet 3/2 { r8 gis'(\mf e }
      b'8 fis~ fis2.) \break
      
      <>^\markup{\small\italic "remove mute"} R1*7
      r2 r4 
        \tuplet 3/2 { r8 cis,\f^\markup{\small\italic "open"} fis }
      \tuplet 3/2 { b8 fis b } cis4~ cis8 dis~ dis[ fis]~
      fis4 r r \tuplet 3/2 { r8 dis fis }
      \tuplet 3/2 { gis( fis4) } dis4~ dis8[ 
        ais']~ ais fis \break
      gis4~ gis8[ cis,~] cis e~ e4
      r8 \tuplet 3/2 { b'16 b b } b4~
         \tuplet 3/2 2 { b8\< b b b fis b }
      r4\! \tuplet 3/2 { r8 d, a' } b4( e,)
      dis2~ dis8 r r4
      r8 fis,8_(\noBeam gis[) e'~] e e fis([ gis)]
    
    \pageTurn
    
      dis2~ dis8 r r4
      r8 b'\noBeam ais[( gis] fis e dis[ b]
      cis2~ cis8) r r4
      r a'2 d,4
      e2~ e8 r r4
      r8 fis,8_(\noBeam a[) e'] r a,(\noBeam\< e') gis \break
      fis\!\noBeam( b,4.) r2
      fis'16( a b,4.) r2
      e4(\> a,2.)~
      a2 r\!^\markup{\small\italic "add mute"}
      R1*4
      
      r8 b(\p\noBeam^\markup{\small\italic "muted"} 
        cis e~ e[) e] b4 \break
      cis2. r4
      r8 b\noBeam(\< cis[ a']~ a) gis( fis[ dis]
      b\> cis~ cis2) r4\!
      r e2.
      r4^\markup{\small\italic "rit."} e2. \breathe
      e1^\markup{\small\italic\right-column { {\hspace #1 remove} \vspace #-0.3 mute } }      
      
    \bar "|."
}

MvtII2 = \relative c''{ 
    \STARtwo
    \tempo "Allegretto" 4.=48
      R2.*3
      R2.*5^\markup{\small\italic "(open)"} \break
      R2.*6 \break
      R2.*9 \break
      R2.*6 \break
      R2.*5
    \time 9/8
      R1*9/8 \break
      
    \time 6/8 
      R2.*9
      
    \pageTurn
    
      R2.*6 \break
      R2.*5
    \time 9/8
      R1*9/8 \break
    
    \time 6/8
      R2.*6 \break
      R2.*4
    \time 9/8
      R1*9/8*2
    \time 6/8
      R2.*3 \break
      
      R2.*6 \break
      R2.*7 \break
      R2.*5 \break
      R2.*5 
    \time 9/8
      R1*9/8 \break
      
    \time 6/8 
      R2.*2
    \time 9/8 
      R1*9/8
    \time 6/8
      R2.
    
    \pageTurn
    
      R2.*6
    \bar "||"
    \time 2/4
    \tempo 4=48 %4.=4
      R2*6 \break
      
      R2*11 \break
      R2*6 \break
      R2*5
    \bar "||"
    \time 6/8
    \tempo "Tempo I" 4.=48
      R2.*3 \break
      
      R2.*6 \break
      R2.*6 \break
      R2.*4 \break
      R2.*2
    \time 9/8
      R1*9/8
    \time 6/8 
      R2.*2 \break
      R2.*9
      
    \bar "|."
        
    \pageTurn
}

\book {
  \paper {
    system-system-spacing =
      #'((basic-distance . 18)
         (minimum-distance . 8)
         (padding . 1)
         (stretchability . 60)) 
    print-all-headers = ##t
    top-margin = 0.6\in
    bottom-margin = 0.6\in
    left-margin = 0.5\in
    right-margin = 0.5\in
  }
  
  \bookpart {  %Music
    \score {
      \new Staff = "MvtII" \MvtII
      \header {
        title = \markup{\magnify #2.2 "II"}
        subtitle = ##f
        composer = ##f	
        poet = ##f
      }
      %\layout { }
      %\midi { }
    }    
  }  
}