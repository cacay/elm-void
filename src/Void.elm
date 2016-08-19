module Void exposing
  ( Void
  , absurd
  )

{-| This library provides the `Void` type which has no values. This could be
useful when you have a simple component that does not have to send messages
for example.

# Definition
@docs Void
@docs absurd

-}


{-| The empty type with no values. |-}
type Void
  = Void Void


{-| Since we can never construct a value of `Void` type, we can immediately
refute the argument and return any result we want.
|-}
absurd : Void -> a
absurd (Void v) =
  absurd v

