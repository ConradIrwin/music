\version "2.18.2"


melody = \relative c' {

  \key b \minor
  \repeat volta 2 {

    b8 cis d e fis4 b | fis b fis e | d b cis b |  a8 b cis a fis2 |
    b8 cis d e fis4 b | fis b fis e | d8 cis b d cis b a cis |

  }

  \alternative {
   {  b2 b'16 r4.. | }
   {  b,2 dis16 r4.. | }
  } \break

  \key e \minor
  \repeat volta 2 {

    b8 g' e g b, g' e g | c, g' e g c, g' e g | bes, e g e bes e g e | fis4 g a b | \break
    b,8 g' e g b, g' e g | c, g' e g c, g' e g | bes, e g e bes e g b


  }

  \alternative {
   { a g fis a g fis e dis | }
   { a' g fis a g fis e bes | }
  } \break

}

harmony = \relative c' {
  \chordmode {
    \repeat volta 2 {

      b1:m | b1:m | b2:m d2 | fis1:m |
      b1:m | b1:m | d2 fis2:m

    }

    \alternative {
      b1:m
      b1/dis

    } \break


    \repeat volta 2 {
      e1:m | c | e:dim/bes | b
      e1:m | c | e:dim/bes

    }


    \alternative {
      { b:m }
      {\once \set chordChanges = ##f
        b2:m e2:m }
    } \break

  }
}
\header {
    composer = "Molly & Conrad, 2015"
    crossRefNumber = "1"
    footnotes = ""
    tagline = ""
    title = "Mischievous Fidget"
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

    \set chordChanges = ##t
    \harmony
  }
 \new Staff {
    \override StaffGrouper.
      staff-staff-spacing.basic-distance = #20
    \time 4/4
    \melody

    \bar "|."
  }
>>
