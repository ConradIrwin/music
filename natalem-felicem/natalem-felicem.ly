#(set-default-paper-size "letter")

\version "2.18.2"

\header{
  title = ""
  subtitle = ""
  composer = \markup { \fontsize #-2 { \italic "Mildred Hill, 1893" adapted \italic "Conrad Irwin, 2017" } }
  tagline = ""
}
\paper { #(define top-margin (* 0.5 in)) }

soprano = \relative {
  e'1 | fis2 e4 a4  | gis1  \bar "||"
  e1  | fis2 e | b' b  | a1 \bar "||"
  e1  | e'2 cis4 a4 | gis2( fis2)  \bar "||"
  d'1 | cis2 a | b b  | a1         \bar "||"

}

alto = \relative { 
 d'1 | cis2 d | e1 |
 cis1 | d2 d | fis e | e1 |
 e1 | e'2 cis4 a4 | e1 |
 fis1 | fis2 fis | g4 fis e2 | e1
 
}
tenor = \relative {
  b1 | a2 b2 | cis1 |
  gis1 | a2 b | d cis4 b | a1 |
  e'1 | e2 cis4 a4 | fis1 |
  e'1 | e2 d | d d | cis1  
}

bass = \relative {
  e1 | fis2 gis | a1 |
  e1 | d2 gis, | a b | cis1 |
  e1 | e'2 cis4 a4 | d,1 |
  d1 | e2 fis | g a4 b | a1 
}

\markup {
  \fill-line {
    \line { \hspace #5 \bold {Natalem Felicem} }
    \line { \null }
  }
}

\markup {

  \fill-line {
    \score {
      <<
        \new Staff {
          \key a \major
          \clef "treble"
          <<
            \voiceOne \soprano  \\
            \voiceTwo \alto 
          >>
        }

        \new Staff {
          \key a \major
          \clef "bass"
          <<
            \voiceThree \tenor \\
            \voiceFour \bass
          >>
        }
     >>
    \layout {
      indent = #0
      #(layout-set-staff-size 18)

      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #12

      }
      \context {
        \Staff
        \remove "Time_signature_engraver"
      }
    }
  }
}
}

dagger = \markup { \hspace #-5 { \fontsize #5 \char ##x2020 } \hspace #2.5 }
verse = \markup { \hspace #-3.6 }

o = \markup { \fontsize #-3 "•" }
l = \markup { | }


\markup {
  \vspace #4
  \fill-line {
    \line { \null }
    \line { \fontsize #-2 \italic "Alexander Pope, 1723" }
  }
}

\markup {

  \fill-line {
    \column {
      \left-align {


        \line { \bold "To Mrs M.B. on her Birthday" }

        \vspace #0.5

        \line { \verse "1   " Oh be thou blest with all that \l Heav’n \o can \l send, }
        \line { Long Health, long | Youth, \o long \l Pleasure, \o and a \l Friend: }

        \vspace #0.5

        \line { \verse "2   " Not with those Toys the \l Western \o world ad- \l mire, }
        \line { Riches that vex, and \l Va-\o ni- \l ties \o that \l tire. }

        \vspace #1

        \line { \verse "3   " With added years if \l Life \o bring nothing \l new, }
        \line { But, like a \l Sieve, \o let \l ev’ry \o blessing \l thro’, }

        \vspace #0.5

        \line { \verse "4   " Some joy still lost, as each \l vain year \o runs \l o’er, }
        \line { And all we \l gain, \o some sad \l Reflec- \o tion \l more; }

        \vspace #1

        \line { \verse \dagger "5   " Is that a \l Birth-\o Day? \l ’t is alas! too clear, }
        \line { ’ \hspace #-0.4 T is but the \l funeral \o of the \l for- \o mer \l year. }

        \vspace #1

        \line { \verse "6   " Let Joy or Ease, \l let Afflu-\o ence or \l Content, }
        \line { And the gay \l Conscience \o of a \l life \o well \l spent, }

        \vspace #0.5

        \line { \verse "7   " Calm ev’ry thought, \l inspirit \o ev’ry \l grace. }
        \line { Glow in thy heart, and \l smile--- \l upon \o thy \l face. }

        \vspace #1

        \line { \verse "8   " Let day improve on day, and year on year, * }
        \line { \hspace #14 Without a \l Pain, a Trouble, \o or a \l Fear; }
        \line { Till Death unfelt that tender \l frame destroy, * }
        \line { \hspace #14 In \o some soft Dream, or \l Exta- \o sy of \l joy, }

        \vspace #0.5

        \line { \verse "9   " Peaceful sleep out the \l Sabbath \o of the \l Tomb, }
        \line { And wake to \l Raptures \o in a \l Life \o to \l come. }
   
      }
    }
  }
}

\markup {
  \fill-line {
    \column {
      \vspace #5
      \line { \fontsize #-5.5 N.B. \fontsize #-2 {Pope wrote \italic { the female world } on line three. What may have been intended as a humourous jab in the 1720s } }

      \line {
        \fontsize #-2 { \hspace #3 lands on unsympathetic ears today. }
      }
    }
  }
}

