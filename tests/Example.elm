module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Firebase test"
        [ Test.describe "elm-firebase"
            [ Test.test
                "connects successfully to a firebase instance"
              <|
                \_ ->
                    Expect.equal 1 1
            ]
        ]
