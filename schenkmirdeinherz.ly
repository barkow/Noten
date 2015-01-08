\version "2.14.2"
\language "deutsch"

\header {
  title = "Schenk Mir Dein Herz - De Hoehner"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=128
}

chordNamesRefrain = \chordmode {
  \global
  \semiGermanChords
  d1 d1 g1 g1
  a1 a1 d1 d1
  g1 a1 fis1:m h1:min e1:min a1 d1 d1
}

melodyRefrain = \relative c'' {
  \global
  a4 a8. h16 a8. g16 fis8. g16 a4 h4 cis4 d4 h1~ h4 r2.
  c4 c8. c16 c8. c16 c8. c16 c4 c4 c4 c4 c1~ c4
  c4 c4 c4 c4  c8. c16  c8. c16  c8. c16 c4
  c4 c4 c4 c4 c8. c16  c8. c16  c8. c16 c4
  c4 c4 c4 c4 c4 c4 c4 c4 c8. c16 c4 c4 c1~ c4 r4
}

wordsRefrain = \lyricmode {
  Schenk mir heut Nacht dein gan -- zes Herz und bleib bei mir
  dann schenk ich dir mein gan -- zes Herz und zei -- ge dir
  was dir ge -- fällt  na na na na na na na
  die gan -- ze Welt  na na na na na na na
  Schenk mir dein Herz ich schenk dir meins
  nur die Lie -- be zählt
}

chordNamesVerseA = \chordmode {
  \semiGermanChords
  a1 a1 
  g1 d1 
  e1 a1 
  e1 a1
  a1 a1
  g1 d1 
  e1 a1 
  e1 a1
}

melodyVerseA = \relative c'' {
  r8. c16 c8. c16 c4 c4 c4 r8. c16 c8. c16 c8. c16 c4 
  r8. c16 c4 c4 c8. c16 c8. c16 c2. 
  r8. c16 c4 c4 c4 c4 c4 r2
  c4 c4 c4 c4 c16 c8.~ c2 r8.
  c16 c8. c16 c4 c4 c4 r8. c16 c8. c16 c8. c16 c4
  r8. c16 c4 c8. c16 c8. c16 c8. c16 c2 r4
  c4 c4 c4 c4 c4 c4 c16 c8.~ c4
  r8. c16 c4 c4 c4 c4 c1
}

wordsVerseA = \lyricmode {
Komm sei die Kö -- ni -- gin in mei -- nem Kö -- nig -- reich
ich schenk dir heut ein Schloss am Rhein
mein Reich ist eine Brü -- cke
die führt ins Glück hi -- nein
Das Schloss ist nicht so gross sym -- bo -- lisch e -- ben nur
ein ei -- ser -- ner Lie -- bes -- treu -- e -- schwur
wer un -- sere bei -- den Na -- men trägt
und die -- se Ver -- se hier
}

wordsVerseB = \lyricmode {
  Es ist ein neu -- er Brauch er bringt uns bei -- den Glueck
  so ein Schloss kann je -- der sehn
  und der Dom gibt Acht da -- rauf
  Zü -- ge kom -- men und gehn

  Ich schlies -- se un -- ser Schloss am Brüc -- ken -- git -- ter an
  und es ist doch nicht al -- lein
  Ge -- mein -- sam wer -- fen wir den Schlüssel
  in den Rhein hinein
}

\score {
  <<
    \new ChordNames {\chordNamesRefrain \chordNamesVerseA \chordNamesRefrain \chordNamesVerseA}
    %\new FretBoards \chordNames
    \new Staff { \melodyRefrain \melodyVerseA \melodyRefrain \melodyVerseA}
    \addlyrics { \wordsRefrain \wordsVerseA \wordsRefrain \wordsVerseB}
  >>
  \layout { }
  \midi { }
}
