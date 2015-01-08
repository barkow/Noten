\version "2.14.2"
\language "deutsch"

\header {
  title = "Du bes die Stadt - Bäck Fööss"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=128
}

chordNamesRefrain = \chordmode {
  \semiGermanChords
  g1 d2 g2
  g2 e2:min a2:7 d2
  c2 g2 d2 e2:min
  c2 g2 d2:7 g2
}

melodyRefrain = \relative c'' {
  c4. c16 c16 c8 c8 c8 c8 c4. c8 c2
  c4. c16 c16 c8 c8 c8 c8 c4. c8 c2
  c4. c16 c16 c8 c8 c8 c8 c4. c8 c2
  c4. c16 c16 c8 c8 c8 c8 c4. c8 c2
}

wordsRefrain = \lyricmode {
  Du, bis die Stadt op die mir all he stonn
  Du häs et uns als Pänz schon an -- je -- donn
  Du häs ´e herr -- lich Laa -- che im Je -- seech
  du bis en Frau die Rotz un Was -- ser krieesch
}

chordNamesVerse = \chordmode {
  \semiGermanChords
  d2 d2:maj7 h2:min7 d2
  g2 a2 d2 a2
  d2 d2:maj7 h2:min7 d2
  g2 a2 d2 c4 c h a
}

melodyVerse = \relative c'' {
  c4. c8 c4. c16 c16 c4. c8 c4.
  c16 c16 c4. c16 c16 c4. c16 c16 c4. c16 c16 c2
  c4. c8 c4. c16 c16 c4. c8 c4.
  c8 c4. \times 1/3 {c8 c c} c4. c8 c2 r2
}

wordsVerse = \lyricmode {
  Grau ding Hoor un su bunt di Kleed
  Du häs Knies in d´r Bud, doch dij Nä -- je -- le rut.
  Grell je -- schmingk un die Foot jet breeit
  É Jlöck, dat dir dat all jot steiht.
}


\score {
  <<
    \new ChordNames {\chordNamesRefrain \chordNamesVerse}
    %\new FretBoards \chordNames
    \new Staff { \global \melodyRefrain \melodyVerse}
    \addlyrics { \wordsRefrain \wordsVerse}
  >>
  \layout { }
  \midi { }
}
