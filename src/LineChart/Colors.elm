module LineChart.Colors exposing
  ( pink, blue, gold, red, green, cyan, teal, purple, rust, strongBlue
  , pinkLight, blueLight, goldLight, redLight, greenLight, cyanLight, tealLight, purpleLight
  , black, gray, grayLight, grayLightest
  )

{-|

<img alt="Colors!" width="610" src="https://github.com/terezka/line-charts/blob/master/images/colors.png?raw=true"></src>

@docs pink, blue, gold, red, green, cyan, teal, purple, rust, strongBlue

## Light
@docs pinkLight, blueLight, goldLight, redLight, greenLight, cyanLight, tealLight, purpleLight

## Gray scale
@docs black, gray, grayLight, grayLightest

## Other
@docs transparent

-}

import Color



{-| -}
pink : Color.Color
pink =
  Color.fromRGB (245, 105, 215)


{-| -}
pinkLight : Color.Color
pinkLight =
  Color.fromRGB (244, 143, 177)


{-| -}
gold : Color.Color
gold =
  Color.fromRGB (205, 145, 60)


{-| -}
goldLight : Color.Color
goldLight =
  Color.fromRGB (255, 204, 128)


{-| -}
blue : Color.Color
blue =
  Color.fromRGB (3, 169, 244)


{-| -}
blueLight : Color.Color
blueLight =
  Color.fromRGB (128, 222, 234)


{-| -}
green : Color.Color
green =
  Color.fromRGB (67, 160, 71)


{-| -}
greenLight : Color.Color
greenLight =
  Color.fromRGB (197, 225, 165)


{-| -}
red : Color.Color
red =
  Color.fromRGB (216, 27, 96)


{-| -}
redLight : Color.Color
redLight =
  Color.fromRGB (239, 154, 154)


{-| -}
rust : Color.Color
rust =
  Color.fromRGB (205, 102, 51)


{-| -}
purple : Color.Color
purple =
  Color.fromRGB (156, 39, 176)


{-| -}
purpleLight : Color.Color
purpleLight =
  Color.fromRGB (206, 147, 216)


{-| -}
cyan : Color.Color
cyan =
  Color.fromRGB (0, 229, 255)


{-| -}
cyanLight : Color.Color
cyanLight =
  Color.fromRGB (128, 222, 234)


{-| -}
teal : Color.Color
teal =
  Color.fromRGB (29, 233, 182)


{-| -}
tealLight : Color.Color
tealLight =
  Color.fromRGB (128, 203, 196)


{-| -}
strongBlue : Color.Color
strongBlue =
  Color.fromRGB (89, 51, 204)





-- GRAY SCALE


{-| -}
black : Color.Color
black =
  Color.fromRGB (0, 0, 0)


{-| -}
gray : Color.Color
gray =
  Color.fromRGB (163, 163, 163)


{-| -}
grayLight : Color.Color
grayLight =
  Color.fromRGB (211, 211, 211)


{-| -}
grayLightest : Color.Color
grayLightest =
  Color.fromRGB (243, 243, 243)
