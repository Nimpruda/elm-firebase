module Firebase exposing (FirebaseApp, automaticDataCollection, name, options, setAutomaticDataCollection)

import Firebase.Options exposing (Options)


type AutomaticDataCollection
    = Enabled
    | Disabled


type Name
    = Name String


type FirebaseApp
    = FirebaseApp Name Options AutomaticDataCollection


automaticDataCollection : FirebaseApp -> AutomaticDataCollection
automaticDataCollection firebase =
    case firebase of
        FirebaseApp _ _ firebaseAutomaticDataCollection ->
            firebaseAutomaticDataCollection


setAutomaticDataCollection : FirebaseApp -> FirebaseApp
setAutomaticDataCollection firebase =
    case firebase of
        FirebaseApp firebaseName opt Disabled ->
            FirebaseApp firebaseName opt Enabled

        FirebaseApp firebaseName opt Enabled ->
            FirebaseApp firebaseName opt Disabled


name : FirebaseApp -> Name
name firebase =
    case firebase of
        FirebaseApp firebaseName _ _ ->
            firebaseName


options : FirebaseApp -> Options
options firebase =
    case firebase of
        FirebaseApp _ opt _ ->
            opt
