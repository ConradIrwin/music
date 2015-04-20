\version "2.18.2"


melody = \relative c' {

  \key a \minor
  \repeat volta 2 {

    \set Timing.measurePosition = #(ly:make-moment -1/8) a'8 |
        e'4 c a | c a f | g2. | e2. | f4 g a | g e4. g8 | a2.~ | a4 ~ a4. a8
        e'4 c a | e' c4. a8 | d2. | b2. | c4 b a | b a g

  }

  \alternative {
    { a2.~ | a2. }

    { a2.~ | a4. d8 e gis }
  }

  \key a \major
  \repeat volta 2 {

    a4. cis,8 d e | d4 cis gis' | a4. cis,8 d e | d4 cis4. a8 | a'4. cis,8 d e | d4 a' gis | e2.~ | e4~ e4. cis8

      d4. cis8 d e | d4 cis a | d4. cis8 d e | d4 cis a | e' cis a | d cis g

  }

  \alternative {
    { a2.~ | a4. d8 e gis }

    { a,2.~ | a2. }
  } \break

}

harmony = \relative c' {
  \chordmode {
    \repeat volta 2 {

    \set Timing.measurePosition = #(ly:make-moment -1/8) s8 |
        a2.:m | f | c | e:m | f | g | a1.:m \break

        a2.:m | f | g1. | a2.:m | g |

    }

    \alternative {
        { \powerChords a1.:1.5 }
        { \powerChords a1.:1.5 }
    } \break


    \repeat volta 2 {

        a2. | b:m | a/cis | d | a | b:m | e1. \break
        d2. | e | fis:m | g | a | g

    }


    \alternative {
        { \powerChords a1.:1.5 }
        { \powerChords a1.:1.5 }
    } \break

  }
}
\header {
    composer = "Conrad Irwin, 2015"
    crossRefNumber = "1"
    footnotes = ""
    tagline = ""
    title = "Waiting..."
    subtitle = ""
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  ragged-last = ##f

}
\paper {
  #(define fonts
    (make-pango-font-tree
    "Baskerville"
    "sans-serif"
    "monospace"
    (/ staff-height pt 20)))

}
<<
  \new ChordNames {
    \override VerticalAxisGroup.
        nonstaff-relatedstaff-spacing.padding = #1
    \override VerticalAxisGroup.
        nonstaff-unrelatedstaff-spacing.padding = #1

    \set chordChanges = ##f
    \harmony
  }
 \new Staff {
    \override StaffGrouper.
      staff-staff-spacing.basic-distance = #20
    \time 3/4
    \melody

    \bar "|."
  }
>>
