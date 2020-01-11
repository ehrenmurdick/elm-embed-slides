module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { greeting : String }


init : Model
init =
    { greeting = "" }


type Msg
    = Greet String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Greet s ->
            { model | greeting = s }


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick (Greet "hi") ] [ text "hi" ]
        , text model.greeting
        , button [ onClick (Greet "hello") ] [ text "hello" ]
        ]
