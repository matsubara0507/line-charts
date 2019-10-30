module Internal.Axis.Line exposing (Config, none, default, full, rangeFrame, Properties, custom, config)


import Svg exposing (Attribute)
import LineChart.Colors as Colors
import Internal.Coordinate as Coordinate
import Color
import Color.Transparent as Transparent



{-| -}
type Config msg =
  Config (Coordinate.Range -> Coordinate.Range -> Properties msg)


{-| -}
default : Config msg
default =
  full Colors.gray


{-| -}
none : Config msg
none =
  custom <| \_ {min, max} ->
    { color = Colors.black
    , opacity = Just Transparent.transparent
    , width = 0
    , events = []
    , start = min
    , end = max
    }


{-| -}
full : Color.Color -> Config msg
full color =
  custom <| \data range ->
    { color = color
    , opacity = Nothing
    , width = 1
    , events = []
    , start = range.min
    , end = range.max
    }


{-| -}
rangeFrame : Color.Color -> Config msg
rangeFrame color =
  custom <| \data range ->
    let smallest = Coordinate.smallestRange data range in
    { color = color
    , opacity = Nothing
    , width = 1
    , events = []
    , start = smallest.min
    , end = smallest.max
    }



-- CUSTOM


{-| -}
type alias Properties msg =
  { color : Color.Color
  , opacity : Maybe Transparent.Opacity
  , width : Float
  , events : List (Attribute msg)
  , start : Float
  , end : Float
  }


{-| -}
custom : (Coordinate.Range -> Coordinate.Range -> Properties msg) -> Config msg
custom =
  Config



-- INTERNAL


{-| -}
config : Config msg -> Coordinate.Range -> Coordinate.Range -> Properties msg
config (Config config_) =
  config_
