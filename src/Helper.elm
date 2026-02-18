module Helper exposing (..)

import Html
import Html.Attributes



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade calificacion =
    List.map
        (\cal ->
            if cal < 0 then
                Failed

            else if cal >= 7 then
                Approved

            else
                Pending
        )
        calificacion


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction estado =
    List.map airplaneScheduleAction estado


headers : String -> Html.Html msg
headers h =
    Html.div []
        [ Html.h1 [] [ Html.text h ]
        , Html.h2 [] [ Html.text h ]
        , Html.h3 [] [ Html.text h ]
        , Html.h4 [] [ Html.text h ]
        , Html.h5 [] [ Html.text h ]
        , Html.h6 [] [ Html.text h ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink link text =
    Html.a [ Html.Attributes.href link ] [ Html.text text ]


main : Html.Html msg
main =
    Html.div []
        [ headers "Cat"
        , hyperlink
            "https://upa.edu.mx"
            "UPA"
        ]


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list
