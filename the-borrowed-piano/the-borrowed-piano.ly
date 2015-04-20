\version "2.18.2"


melody = \relative c' {
  \repeat volta 2 {

    f4. g8 a g | a g f2    | g4. a8 bes a | bes a g4 a8 c |
    d8 c a4 c  | d8 c a4 f | g f e        | c2.

    f4. g8 a g | a g f2    | g4. a8 bes a | bes a g4 d' |
    c g a8 bes | c4 d ees  | f2.~         | f2.

    bes,4. c8 d c | d c bes4 a | g f d   | c2.
    bes'4. c8 d c | d c a4 f   | bes a f | g2.

    d4. e8 f e | f e d2  | d4. e8 f e | f g g2
    a8 g e2    | a8 g e2
  }

  \alternative {
    { a8 g e4 d  | e2. } 
    { a8 g f4 e  | f2. }
  }
}

harmony = \relative c' {
  \chordmode {
    \repeat volta 2 {

      f2. | f | g:m | g:m | bes | bes | c | c \break

      f | f | g:m | g:m | c | ees | f | f:7 \break

      bes | bes | ees | f | bes | a:m | g:m | c \break

      d:m | c | d:m | c | a:m | bes
    }

    \alternative {
      { c:6 | c:7 }
      { c |  f }
    } 
  }
}
\header {
	composer = "Conrad Irwin, 2014"
	crossRefNumber = "1"
	footnotes = ""
	tagline = ""
	title = "The Borrowed Piano"
    subtitle = "(for Molly)"
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t

}
\paper {
  system-system-spacing = #'((basic-distance . 14) (padding . 0))
  markup-system-spacing = #'((basic-distance . 20) (padding . 0))
  top-markup-spacing = #'((basic-distance . 4) (padding . 0))

}
<<
  \new ChordNames {
    \override VerticalAxisGroup.
        nonstaff-relatedstaff-spacing.padding = #1
    \override VerticalAxisGroup.
        nonstaff-unrelatedstaff-spacing.padding = #1

    \set chordChanges = ##t
    \harmony
  }
 \new Staff {
    \override StaffGrouper.
      staff-staff-spacing.basic-distance = #15
    \time 3/4
    \key f \major
    \melody

    \bar "|."
  }
>>
