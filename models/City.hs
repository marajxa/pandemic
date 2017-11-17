
module City where

import Infection

data City = City
  { name :: String
  , connected_cities  :: [City]
  , default_infection :: Color
  , infections        :: [Infection]
  , research_station  :: Bool
  }

data Color where
  Black  :: Color
  Blue   :: Color
  Red    :: Color
  Yellow :: Color

game_cities :: [city]
game_cities = [algiers, atlanta, baghdad, bangkok]

algiers       =
  City ("Algiers", [cairo, istanbul, paris, madrid], Black, [], False)
atlanta       =
  City ("Atlanta", [miami, chicago, washington], Blue, [], True)
baghdad       =
  City ("Baghdad", [cairo, istanbul, tehran, karachi, riyadh], Black, [], False)
bangkok       =
  City ("Bangkok", [], [], False)
beijing       =
  City ("Beijing", [], [], False)
bogota        =
  City ("Bogota", [miami, mexico_city, lima, buenos_aires, sao_paulo], Yellow, [], False)
buenos_aires  =
  City ("Buenos Aires", [sau_paulo, bogota], Yellow, [], False)
cairo         =
  City ("Cairo", [], [], False)
chennai       =
  City ("Chennai", [], [], False)
chicago       =
  City ("Chicago", [san_francisco, montreal, atlanta, los_angeles, mexico_city], Blue, [], False)
delhi         =
  City ("Delhi", [], [], False)
essen         =
  City ("Essen", [], [], False)
ho_chi_min    =
  City ("Ho Chi Min City", [], [], False)
hong_kong     =
  City ("Hong Kong", [], [], False)
istanbul      =
  City ("Istanbul", [], [], False)
jakarta       =
  City ("Jakarta", [], [], False)
johannesburg  =
  City ("Johannesburg", [], [], False)
karachi       =
  City ("Karachi", [], [], False)
khartoum      =
  City ("Khartoum", [], [], False)
kinshasa      =
  City ("Kinshasa", [], [], False)
kolkata       =
  City ("Kolkata", [], [], False)
lagos         =
  City ("Lagos", [], [], False)
lima          =
  City ("Lima", [santiago, bogota, mexico_city], Yellow, [], False)
london        =
  City ("London", [], [], False)
los_angeles   =
  City ("Los Angeles", [san_francisco, chicago, mexico_city, sydney], Yellow, [], False)
madrid        =
  City ("Madrid", [], [], False)
manila        =
  City ("Manila", [], [], False)
mexico_city   =
  City ("Mexico City", [los_angeles, chicago, miami, bogota, lima], Yellow, [], False)
miami         =
  City ("Miami", [mexico_city, bogota, atlanta, washington], Yellow, [], False)
milan         =
  City ("Milan", [], [], False)
montreal      =
  City ("Montreal", [chicago, new_york, washington], Blue, [], False)
moscow        =
  City ("Moscow", [], [], False)
mumbai        =
  City ("Mumbai", [], [], False)
new_york      =
  City ("New York", [montreal, washington, london, madrid], Blue, [], False)
osaka         =
  City ("Osaka", [], [], False)
paris         =
  City ("Paris", [], [], False)
riyadh        =
  City ("Riyadh", [], [], False)
san_francisco =
  City ("San Francisco", [los_angeles, chicago, tokyo, manila], Blue, [], False)
santiago      =
  City ("Santiago", [lima], Yellow, [], False)
sao_paulo     =
  City ("Sao Paulo", [buenos_aires, bogota, lagos, madrid], Yellow, [], False)
seoul         =
  City ("Seoul", [], [], False)
shanghai      =
  City ("Shanghai", [], [], False)
st_petersburg =
  City ("St. Petersburg", [], [], False)
sydney        =
  City ("Sydney", [], [], False)
taipei        =
  City ("Taipei", [], [], False)
tehran        =
  City ("Tehran", [], [], False)
tokyo         =
  City ("Tokyo", [], [], False)
washington    =
  City ("Washington", [miami, atlanta, montreal, new_york], Blue, [], False)
