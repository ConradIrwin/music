\version "2.18.2"


melody = \relative c' {
  \repeat volta 2 {

	<a' d fis>2\arpeggio fis'4 | e8 fis g4 e | d cis d | cis8 b a2 | 
	<a d fis>2\arpeggio fis'4 | e8 fis g4 e | d cis d | e8 a4.~ a4 

	<a, d fis>2\arpeggio fis'4 | e8 fis g4 e | d cis d | cis8 b a2 |
    <e g>4 fis g | fis e d | cis2.~ | cis2.

   }  \repeat volta 2 {

     << { g'4 a g } \\ { e2. } >> | <d fis>4. e8 d4 | cis d cis | cis8 a4.~ a4 |
     b4 cis d | cis d e | a2. | fis2.

     << { g4 a g } \\ { e2. } >>  | <d fis>4. e8 d4 | cis d cis | cis8 a4.~ a4 |
     d'8 cis b a g fis | e4 d cis8 e | 

   \mark \markup { \musicglyph #"scripts.coda" }
   | d2.~ | d2.

  }

   \mark \markup { \musicglyph #"scripts.coda" }

    \tempo \markup {
    \italic \smaller Treibend.
  }

  \tuplet 3/2 { b8 d fis }
  \tuplet 3/2 { cis e a }
  \tuplet 3/2 { d, g b } |

  <e, g a d>2\arpeggio cis'4 | d2.\fermata
  

}

harmony = \relative c' {
  \chordmode {
    \repeat volta 2 {

      d2. | a | g | a | d | a | g | a \break

      d | a | g | a | e:m | d | a | a \break

   }  \repeat volta 2 {

      e:m | d | a | fis:m | g | a | d | b:m \break

      e:m | d | a | fis:m | g | a | d | d \break
    }
  
  b4:m a g | a2./e | d2.
  }
}
\header {
	composer = "Molly McNeil, 2015"
	crossRefNumber = "1"
	footnotes = ""
	tagline = ""
	title = "Chip's Easter Waltz"
    subtitle = ""
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t

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
    \key d \major
    \melody

    \bar "|."
  }
>>
