{-# LANGUAGE GADTs #-}
module Role where

data Role = Role
  { name :: [Char]
  }

contingency_planner   = Role "Contingency Planner"
dispatcher            = Role "Dispatcher"
medic                 = Role "Medic"
operations_expert     = Role "Operations Expert"
quarantine_specialist = Role "Quarantine Specialist"
researcher            = Role "Researcher"
scientist             = Role "Scientist"
