\version "2.14.2"
\language "deutsch"

\header {
  title = "Dirty old town"
}

global = {
  \time 4/4
  \key g \major
  \tempo 4=132
}

chordsVerse = \chordmode {
  \semiGermanChords
  g1 g1 g1 g1
  c1 c1 g1 g1
  g1 g1 g1 g1
  d1 d1 e1:min e1:min
}

chordsInstrumental = \transpose g c \chordsVerse

chordsEnd = \chordmode {
  \semiGermanChords
  d1 d1 e1:min e1:min
}

melodyVerse = \relative c' {
  d4 e8 g8~ g4 h1~ h4 a8. g16 h4 g4 d1~ d4
  r4 h'4 d8 e8~ e1~ e4 d8. h16 a8 g4 h8~ h1~ h4
  r4 e4 d4 h1~ h4 a8. g16 h4 g4 d1~ d4
  r4 e8. g16 h4 a1~ a4 r4 a8. g16 e4 e1~ e4 
}

melodyInstrumental = \transpose g c' \melodyVerse

melodyEnd = \relative c' {
  r4 e8. g16 h4 a1~ a4 r4 a8. g16 e4 e1~ e4 r2.
}

wordsVerseA = \lyricmode {
  I met my love by the gas works wall
  Dreamed a dream by the old ca -- nal
  Kissed my girl by the fac -- tory wall
  Dir -- ty old town, dir -- ty old town
}

wordsVerseB = \lyricmode {
  Clouds are _ drif -- ting a -- cross the moon
  Cats are prow -- ling _ on their beat
  Spring's a girl from the streets at night
  Dir -- ty old town, dir -- ty old town
}

wordsVerseC = \lyricmode {
  I heard a si -- ren _ from the docks
  Saw a train set the night on fire
  Smelled the spring on the smo -- ky wind
  Dir -- ty old town, dir -- ty old town
}

wordsVerseD = \lyricmode {
  I'm gon -- na make me a big sharp axe
  Shi -- ning steel tem -- pered in the fire
  Chop you down like an old dead tree
  Dir -- ty old town, dir -- ty old town
}

wordsVerseE = \lyricmode {
  I met my love by the gas works wall
  Dreamed a dream by the old ca -- nal
  Kissed my girl by the fac -- tory wall
  Dir -- ty old town, dir -- ty old town
}

wordsEnd = \lyricmode {
  Dir -- ty old town, dir -- ty old town
}

\score {
  <<
    \new ChordNames {\set chordChanges = ##t g1 
                     \chordsVerse 
                     \chordsVerse 
                     \chordsInstrumental
                     \chordsVerse 
                     \chordsEnd
    }

    \new Staff { \global r4 \melodyVerse \bar "" \break 
                            \repeat volta 2 \melodyVerse \bar "" \break 
                            \key c \major \melodyInstrumental \bar "" \break \key g \major
                            \repeat volta 3 \melodyVerse \bar "" \break 
                            \melodyEnd
    }
    \addlyrics { \repeat unfold 33 { \skip 1 }  
                 \wordsVerseA 
                 \repeat unfold 33 { \skip 1 }
                 \wordsVerseC                 
                 \wordsEnd
    }
    \addlyrics {
      \repeat unfold 33 { \skip 1 }  
      \wordsVerseB
      \repeat unfold 33 { \skip 1 }
      \wordsVerseD
    }
    \addlyrics {
      \repeat unfold 33 { \skip 1 }
      \repeat unfold 33 { \skip 1 }
      \repeat unfold 33 { \skip 1 }
      \wordsVerseE
    }
  >>
  \layout { }
  \midi { }
}
