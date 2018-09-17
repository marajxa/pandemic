{-# LANGUAGE GADTs #-}
module City where

data City = City
  { name :: [Char]
  , connected_cities  :: [City]
  , research_station  :: Bool
  }
  deriving Eq
 
instance Show City where
  show (City n c r) = show n ++ ": " ++ "[" ++ show_names c ++ "] " ++ show r
    where
      show_names :: [City] -> [Char]
      show_names [] = []
      show_names [(City name _ _)]    = show name
      show_names ((City name _ _):cs) = show name ++ ", " ++ show_names cs

game_cities :: [City]
game_cities = [ algiers
              , atlanta
	      , baghdad
	      , bangkok
	      , beijing
	      , bogota
	      , buenos_aires
	      , cairo
	      , chennai
	      , chicago
	      , delhi
	      , essen
	      , ho_chi_minh
	      , hong_kong
	      , istanbul
	      , jakarta
	      , johannesburg
	      , karachi
	      , khartoum
	      , kinshasa
	      , kolkata
	      , lagos
	      , lima
	      , london
	      , los_angeles
	      , madrid
	      , manila
	      , mexico_city
	      , miami
	      , milan
	      , montreal
	      , moscow
	      , mumbai
	      , new_york
	      , osaka
	      , paris
	      , riyadh
	      , san_francisco
	      , santiago
	      , sao_paulo
	      , seoul
	      , shanghai
	      , st_petersburg
	      , sydney
	      , taipei
	      , tehran
	      , tokyo
	      , washington]

algiers       =
  City "Algiers" [cairo, istanbul, paris, madrid] False
atlanta       =
  City "Atlanta" [miami, chicago, washington] True
baghdad       =
  City "Baghdad" [cairo, istanbul, tehran, karachi, riyadh] False
bangkok       =
  City "Bangkok" [kolkata, chennai, jakarta, ho_chi_minh, hong_kong] False
beijing       =
  City "Beijing" [shanghai, seoul] False
bogota        =
  City "Bogota" [miami, mexico_city, lima, buenos_aires, sao_paulo] False
buenos_aires  =
  City "Buenos Aires" [sao_paulo, bogota] False
cairo         =
  City "Cairo" [algiers, istanbul, baghdad, riyadh, khartoum] False
chennai       =
  City "Chennai" [mumbai, delhi, kolkata, bangkok, jakarta] False
chicago       =
  City "Chicago" [san_francisco, montreal, atlanta, los_angeles, mexico_city] False
delhi         =
  City "Delhi" [tehran, karachi, mumbai, chennai, kolkata] False
essen         =
  City "Essen" [st_petersburg, milan, paris, london] False
ho_chi_minh   =
  City "Ho Chi Minh City" [jakarta, bangkok, hong_kong, manila] False
hong_kong     =
  City "Hong Kong" [kolkata, shanghai, taipei, manila, ho_chi_minh, bangkok] False
istanbul      =
  City "Istanbul" [milan, st_petersburg, moscow, baghdad, cairo, algiers] False
jakarta       =
  City "Jakarta" [chennai, bangkok, ho_chi_minh, sydney] False
johannesburg  =
  City "Johannesburg" [kinshasa, khartoum] False
karachi       =
  City "Karachi" [riyadh, baghdad, tehran, delhi, mumbai] False
khartoum      =
  City "Khartoum" [johannesburg, kinshasa, lagos, cairo] False
kinshasa      =
  City "Kinshasa" [lagos, johannesburg, khartoum] False
kolkata       =
  City "Kolkata" [delhi, chennai, bangkok, hong_kong] False
lagos         =
  City "Lagos" [khartoum, kinshasa, sao_paulo] False
lima          =
  City "Lima" [santiago, bogota, mexico_city] False
london        =
  City "London" [essen, paris, madrid, new_york] False
los_angeles   =
  City "Los Angeles" [san_francisco, chicago, mexico_city, sydney] False
madrid        =
  City "Madrid" [new_york, london, paris, algiers, sao_paulo] False
manila        =
  City "Manila" [ho_chi_minh, hong_kong, taipei, san_francisco, sydney] False
mexico_city   =
  City "Mexico City" [los_angeles, chicago, miami, bogota, lima] False
miami         =
  City "Miami" [mexico_city, bogota, atlanta, washington] False
milan         =
  City "Milan" [istanbul, essen, paris] False
montreal      =
  City "Montreal" [chicago, new_york, washington] False
moscow        =
  City "Moscow" [st_petersburg, istanbul, tehran] False
mumbai        =
  City "Mumbai" [karachi, delhi, chennai] False
new_york      =
  City "New York" [montreal, washington, london, madrid] False
osaka         =
  City "Osaka" [tokyo, taipei] False
paris         =
  City "Paris" [london, madrid, algiers, milan, essen] False
riyadh        =
  City "Riyadh" [cairo, baghdad, karachi] False
san_francisco =
  City "San Francisco" [los_angeles, chicago, tokyo, manila] False
santiago      =
  City "Santiago" [lima] False
sao_paulo     =
  City "Sao Paulo" [buenos_aires, bogota, lagos, madrid] False
seoul         =
  City "Seoul" [beijing, shanghai, tokyo] False
shanghai      =
  City "Shanghai" [beijing, seoul, tokyo, taipei, hong_kong] False
st_petersburg =
  City "St. Petersburg" [essen, istanbul, moscow] False
sydney        =
  City "Sydney" [jakarta, manila, los_angeles] False
taipei        =
  City "Taipei" [osaka, manila, hong_kong, shanghai] False
tehran        =
  City "Tehran" [moscow, baghdad, karachi, delhi] False
tokyo         =
  City "Tokyo" [seoul, osaka, shanghai, san_francisco] False
washington    =
  City "Washington" [miami, atlanta, montreal, new_york] False
