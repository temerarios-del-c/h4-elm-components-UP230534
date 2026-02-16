[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/KvLwvSW7)
# Commands
These are the four commands that are evaluated, you can run them locally. To solve the errors faster.
- Validate format
```bash
# Linux & Windows
elm-format src/ --validate
```
- Run checks
```bash
# Linux & Windows
elm-review
```
```bash
# Linux
elm-review --template jfmengels/elm-review-common/example --rules NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn
# Windows Powershell
elm-review --template jfmengels/elm-review-common/example --rules "NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn"
# Windows cmd
elm-review --template jfmengels/elm-review-common/example --rules NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn
```
- Build
```bash
# Linux
elm make src/*
# Windows
elm make src/<file>.elm
```
- Run tests
```bash
# Linux & Windows
elm-test
```

## Prerequisites
- NodeJs
- Elm
- elm-test 
- elm-format
- elm-review

# Exercises
## Medium exercises
- Create a function "joinWords" that receive two strings and join them (++)
```elm
joinWords : String -> String 
joinWords word1 word2 =
    -- Your definition here
```

- Create a function "isUpperChars" that receives a List of Char we will transform each element with the function (Char.isUpper : Char -> Bool) and generate a new list, sound familiar?)
```elm
isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper  __________
```

- Finally we want to expand our previous function and create "evalChars" which receive any function with type [(Char -> Bool)](https://package.elm-lang.org/packages/elm/core/latest/Char) and returns a new list with each element transformed 
```elm
evalChars: List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map ___________   _____________
```

## headers component
- Create a component "headers" that given a String parameter, generates the following html code:
```html
<div>
  <h1>{{param}}</h1>
  <h2>{{param}}</h2>
  <h3>{{param}}</h3>
  <h4>{{param}}</h4>
  <h5>{{param}}</h5>
  <h6>{{param}}</h6>
</div>
```

## hyperlink component
- Create a component "hyperlink" that receives two Strings
- - The url
- - The text
That produces the following html:
```html
<a href="{{url}}">{{text}}</a>
```

