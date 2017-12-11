{-# LANGUAGE GADTs #-}

module PlayerCard where

import City

data Action where
  RemoveDiscard  :: Action
  SkipInfect     :: Action
  RearrangeCards :: Action
  MovePawn       :: Action
  AddStation     :: Action
  deriving Show

data PlayerCard where
  EpidemicCard :: PlayerCard
  CityCard     :: City -> PlayerCard
  EventCard    :: Action -> PlayerCard
  deriving Show

game_playercards :: [PlayerCard]
game_playercards = make_cities game_cities
  where
    make_cities :: [City] -> [PlayerCard]
    make_cities []     = []
    make_cities (x:xs) = CityCard x : make_cities xs
