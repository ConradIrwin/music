\version "2.18.2"


melody = \relative c' {
  \repeat volta 2 {
	d4. e8 fis d g fis | e1 |
    e4. fis8 g e a g | fis1 |
	d'4. d8 d cis b a | a4. g8 fis4 fis |
    e4. fis16 g fis4 e |
  }
  \alternative {
    { d1 }
    { d1 }
  }

  \repeat volta 2 {
	fis4. fis8 g fis a g | fis1 |
    g4. g8 a g4 fis16 e | fis1 |
	b4. b8 b a g fis | g2. e4 |
    cis4. d8 e cis fis e |
  }
  \alternative {
     { d1 }
     { d1 }
  }
  
}

harmony = {
    \repeat volta 2 {
	  d8_\markup{\italic "con pedale"} a fis a d a fis a | e a g a a, a g a |
	  e a g a a, a g a | d a fis a a, a fis a |
      d b fis b d b fis b | e b a b e b a b |
      a, a g a e a g a | 
    }
    \alternative {
       { d a fis a a, a fis a }
       { d a fis a cis a fis a }
    }
    \break
    \repeat volta 2 {
      d b fis b b, b fis b | cis a fis a fis, fis cis fis |
      g, g d g g, g e g | b, fis d fis fis, fis d fis |
      g, g d g g, g d g | e b g b b, g e g |
      a, e cis e a e cis e |  
    }
    \alternative {
      {d a fis a cis a fis a }
      {d a fis a a, a fis d \fermata }
    }

 }
\header {
	composer = "Conrad & Molly 2015"
	crossRefNumber = "1"
	footnotes = ""
	tagline = \markup\wordwrap-string #"It reminds me of the first time I met Molly's parents, at your old house. There was Mozart on in the background, and everyone was just sitting around chatting and doing crossword puzzles."
	title = "Family Afternoons"
    subtitle = "(for Grandpa)"
}
\paper {
  system-system-spacing = #'((basic-distance . 16) (padding . 0))
  markup-system-spacing = #'((basic-distance . 20) (padding . 0))
  top-markup-spacing = #'((basic-distance . 20) (padding . 0))
  #(set-paper-size "letter")

}

\score {
\new PianoStaff <<

    \new Staff  = "RH" {
	    \tempo "Andante Incalzando" 4 = 90

        \time 4/4
        \key d \major
        \melody

        \bar "|."
    }

    \new Staff = "LH" {
        \time 4/4
        \key d \major
        \clef "bass"

        \harmony

        \bar "|."

    }


>>
}
