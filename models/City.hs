{-# LANGUAGE GADTs #-}
module City where

data City = City
  { name :: [Char]
  , connected_cities  :: [City]
  , research_station  :: Bool
  }
 
instance Show City where
  show (City n c r) = show n ++ ": " ++ "[" ++ show_names c ++ "] " ++ " " ++ show r
    where
      show_names :: [City] -> [Char]
      show_names [] = []
      show_names [(City name _ _)]    = show name
      show_names ((City name _ _):cs) = show name ++ ", " ++ show_names cs

data Color where
  Black  :: Color
  Blue   :: Color
  Red    :: Color
  Yellow :: Color
  deriving (Eq, Show)

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
  City "Algiers" [cairo, istanbul, paris, madrid] Black False
atlanta       =
  City "Atlanta" [miami, chicago, washington] Blue True
baghdad       =
  City "Baghdad" [cairo, istanbul, tehran, karachi, riyadh] Black False
bangkok       =
  City "Bangkok" [kolkata, chennai, jakarta, ho_chi_minh, hong_kong] Red False
beijing       =
  City "Beijing" [shanghai, seoul] Red False
bogota        =
  City "Bogota" [miami, mexico_city, lima, buenos_aires, sao_paulo] Yellow False
buenos_aires  =
  City "Buenos Aires" [sao_paulo, bogota] Yellow False
cairo         =
  City "Cairo" [algiers, istanbul, baghdad, riyadh, khartoum] Black False
chennai       =
  City "Chennai" [mumbai, delhi, kolkata, bangkok, jakarta] Black False
chicago       =
  City "Chicago" [san_francisco, montreal, atlanta, los_angeles, mexico_city] Blue False
delhi         =
  City "Delhi" [tehran, karachi, mumbai, chennai, kolkata] Black False
essen         =
  City "Essen" [st_petersburg, milan, paris, london] Blue False
ho_chi_minh   =
  City "Ho Chi Minh City" [jakarta, bangkok, hong_kong, manila] Red False
hong_kong     =
  City "Hong Kong" [kolkata, shanghai, taipei, manila, ho_chi_minh, bangkok] Red False
istanbul      =
  City "Istanbul" [milan, st_petersburg, moscow, baghdad, cairo, algiers] Black False
jakarta       =
  City "Jakarta" [chennai, bangkok, ho_chi_minh, sydney] Red False
johannesburg  =
  City "Johannesburg" [kinshasa, khartoum] Yellow False
karachi       =
  City "Karachi" [riyadh, baghdad, tehran, delhi, mumbai] Black False
khartoum      =
  City "Khartoum" [johannesburg, kinshasa, lagos, cairo] Yellow False
kinshasa      =
  City "Kinshasa" [lagos, johannesburg, khartoum] Yellow False
kolkata       =
  City "Kolkata" [delhi, chennai, bangkok, hong_kong] Black False
lagos         =
  City "Lagos" [khartoum, kinshasa, sao_paulo] Yellow False
lima          =
  City "Lima" [santiago, bogota, mexico_city] Yellow False
london        =
  City "London" [essen, paris, madrid, new_york] Blue False
los_angeles   =
  City "Los Angeles" [san_francisco, chicago, mexico_city, sydney] Yellow False
madrid        =
  City "Madrid" [new_york, london, paris, algiers, sao_paulo] Blue False
manila        =
  City "Manila" [ho_chi_minh, hong_kong, taipei, san_francisco, sydney] Red False
mexico_city   =
  City "Mexico City" [los_angeles, chicago, miami, bogota, lima] Yellow False
miami         =
  City "Miami" [mexico_city, bogota, atlanta, washington] Yellow False
milan         =
  City "Milan" [istanbul, essen, paris] Blue False
montreal      =
  City "Montreal" [chicago, new_york, washington] Blue False
moscow        =
  City "Moscow" [st_petersburg, istanbul, tehran] Black False
mumbai        =
  City "Mumbai" [karachi, delhi, chennai] Black False
new_york      =
  City "New York" [montreal, washington, london, madrid] Blue False
osaka         =
  City "Osaka" [tokyo, taipei] Red False
paris         =
  City "Paris" [london, madrid, algiers, milan, essen] Blue False
riyadh        =
  City "Riyadh" [cairo, baghdad, karachi] Black False
san_francisco =
  City "San Francisco" [los_angeles, chicago, tokyo, manila] Blue False
santiago      =
  City "Santiago" [lima] Yellow False
sao_paulo     =
  City "Sao Paulo" [buenos_aires, bogota, lagos, madrid] Yellow False
seoul         =
  City "Seoul" [beijing, shanghai, tokyo] Red False
shanghai      =
  City "Shanghai" [beijing, seoul, tokyo, taipei, hong_kong] Red False
st_petersburg =
  City "St. Petersburg" [essen, istanbul, moscow] Blue False
sydney        =
  City "Sydney" [jakarta, manila, los_angeles] Red False
taipei        =
  City "Taipei" [osaka, manila, hong_kong, shanghai] Red False
tehran        =
  City "Tehran" [moscow, baghdad, karachi, delhi] Black False
tokyo         =
  City "Tokyo" [seoul, osaka, shanghai, san_francisco] Red False
washington    =
  City "Washington" [miami, atlanta, montreal, new_york] Blue False
