module PutJSON where

import Data.List (intercalate)
import JSON

renderJValue :: JValue -> String

renderJValue (JString s) = show s
renderJValue (JNumber n) = show n
renderJValue 
