{-# LANGUAGE GADTs #-}
module InfectionCard where

import City

data InfectionCard = InfectionCard
  { city              :: City
  , default_infection :: Color
  }
  deriving Show
  
data Color where
  Black  :: Color
  Blue   :: Color
  Red    :: Color
  Yellow :: Color
  deriving (Eq, Show)

game_infectioncards :: [InfectionCard]
game_infectioncards = [ algiers_infectioncard
              , atlanta_infectioncard
	      , baghdad_infectioncard
	      , bangkok_infectioncard
	      , beijing_infectioncard
	      , bogota_infectioncard
	      , buenos_aires_infectioncard
	      , cairo_infectioncard
	      , chennai_infectioncard
	      , chicago_infectioncard
	      , delhi_infectioncard
	      , essen_infectioncard
	      , ho_chi_minh_infectioncard
	      , hong_kong_infectioncard
	      , istanbul_infectioncard
	      , jakarta_infectioncard
	      , johannesburg_infectioncard
	      , karachi_infectioncard
	      , khartoum_infectioncard
	      , kinshasa_infectioncard
	      , kolkata_infectioncard
	      , lagos_infectioncard
	      , lima_infectioncard
	      , london_infectioncard
	      , los_angeles_infectioncard
	      , madrid_infectioncard
	      , manila_infectioncard
	      , mexico_city_infectioncard
	      , miami_infectioncard
	      , milan_infectioncard
	      , montreal_infectioncard
	      , moscow_infectioncard
	      , mumbai_infectioncard
	      , new_york_infectioncard
	      , osaka_infectioncard
	      , paris_infectioncard
	      , riyadh_infectioncard
	      , san_francisco_infectioncard
	      , santiago_infectioncard
	      , sao_paulo_infectioncard
	      , seoul_infectioncard
	      , shanghai_infectioncard
	      , st_petersburg_infectioncard
	      , sydney_infectioncard
	      , taipei_infectioncard
	      , tehran_infectioncard
	      , tokyo_infectioncard
	      , washington_infectioncard]

algiers_infectioncard = InfectionCard algiers Black

atlanta_infectioncard = InfectionCard atlanta Blue

baghdad_infectioncard = InfectionCard baghdad Black

bangkok_infectioncard = InfectionCard bangkok Red

beijing_infectioncard = InfectionCard beijing Red

bogota_infectioncard = InfectionCard bogota Yellow

buenos_aires_infectioncard = InfectionCard buenos_aires Yellow

cairo_infectioncard = InfectionCard cairo Black

chennai_infectioncard = InfectionCard chennai Black

chicago_infectioncard = InfectionCard chicago Blue

delhi_infectioncard = InfectionCard delhi Black

essen_infectioncard = InfectionCard essen Blue

ho_chi_minh_infectioncard = InfectionCard ho_chi_minh Red

hong_kong_infectioncard = InfectionCard hong_kong Red

istanbul_infectioncard = InfectionCard istanbul Black

jakarta_infectioncard = InfectionCard jakarta Red

johannesburg_infectioncard = InfectionCard johannesburg Yellow

karachi_infectioncard = InfectionCard karachi Black

khartoum_infectioncard = InfectionCard khartoum Yellow

kinshasa_infectioncard = InfectionCard kinshasa Yellow

kolkata_infectioncard = InfectionCard kolkata Black

lagos_infectioncard = InfectionCard lagos Yellow

lima_infectioncard = InfectionCard lima Yellow

london_infectioncard = InfectionCard london Blue

los_angeles_infectioncard = InfectionCard los_angeles Yellow

madrid_infectioncard = InfectionCard madrid Blue

manila_infectioncard = InfectionCard manila Red

mexico_city_infectioncard = InfectionCard mexico_city Yellow

miami_infectioncard = InfectionCard miami Yellow

milan_infectioncard = InfectionCard milan Blue

montreal_infectioncard = InfectionCard montreal Blue

moscow_infectioncard = InfectionCard moscow Black

mumbai_infectioncard = InfectionCard mumbai Black

new_york_infectioncard = InfectionCard new_york Blue

osaka_infectioncard = InfectionCard osaka Red

paris_infectioncard = InfectionCard paris Blue

riyadh_infectioncard = InfectionCard riyadh Black

san_francisco_infectioncard = InfectionCard san_francisco Blue

santiago_infectioncard = InfectionCard santiago Yellow

sao_paulo_infectioncard = InfectionCard sao_paulo Yellow

seoul_infectioncard = InfectionCard seoul Red

shanghai_infectioncard = InfectionCard shanghai Red

st_petersburg_infectioncard = InfectionCard st_petersburg Blue

sydney_infectioncard = InfectionCard sydney Red

taipei_infectioncard = InfectionCard taipei Red

tehran_infectioncard = InfectionCard tehran Black

tokyo_infectioncard = InfectionCard tokyo Red

washington_infectioncard = InfectionCard washington Blue

