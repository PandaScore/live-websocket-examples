# Live WebSocket examples

### Basic example

A very basic example, connecting to a match websocket stream and printing the live frames.

#### Running

> In the example below, you must replace `MATCH_ID` by the ID of the match currently running you wich to connect to, and `YOUR_PANDASCORE_TOKEN` by your pandascore access token.

```shell
bundle install
ruby basic.rb MATCH_ID YOUR_PANDASCORE_TOKEN
```

#### Example

```json
$ ruby basic.rb 57877 XXXXXXXXXXXXXYYYYYYYYYYY-ZZZZZZZZZZZZZZZZZZZZZZZZZZ
Connected
received 103b
{"type"=>"hello",
 "payload"=>
  {"status"=>"running",
   "game_id"=>"201865",
   "winner_id"=>"null",
   "videogame"=>"lol"}}
received 5769b
{"blue"=>
  {"id"=>63,
   "name"=>"KT Rolster",
   "acronym"=>"KT",
   "towers"=>1,
   "gold"=>24000,
   "kills"=>5,
   "drakes"=>0,
   "nashors"=>0,
   "score"=>0,
   "players"=>
    {"top"=>
      {"id"=>352,
       "name"=>"Smeb",
       "champion"=>
        {"id"=>2213,
         "name"=>"Irelia",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/0dd86d1480a8ac2f04c633d682242c5d.png"},
       "cs"=>93,
       "level"=>9,
       "kills"=>0,
       "deaths"=>3,
       "assists"=>2,
       "summoner_spells"=>
        [{"id"=>39, "name"=>"Teleport"}, {"id"=>28, "name"=>"Flash"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         nil,
         {"id"=>681, "name"=>"Dagger"},
         {"id"=>724, "name"=>"Corrupting Potion"},
         {"id"=>1649, "name"=>"Ninja Tabi"},
         {"id"=>860, "name"=>"Tiamat"}],
       "hp"=>0},
     "jun"=>
      {"id"=>330,
       "name"=>"Score",
       "champion"=>
        {"id"=>2285,
         "name"=>"Xin Zhao",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/f9ba83de2c8b43d1c5e4778f50595c6b.png"},
       "cs"=>76,
       "level"=>9,
       "kills"=>1,
       "deaths"=>1,
       "assists"=>4,
       "summoner_spells"=>
        [{"id"=>36, "name"=>"Smite"}, {"id"=>28, "name"=>"Flash"}],
       "items"=>
        [{"id"=>1650, "name"=>"Oracle Lens"},
         nil,
         nil,
         nil,
         {"id"=>730, "name"=>"Refillable Potion"},
         {"id"=>650, "name"=>"Boots of Speed"},
         {"id"=>830, "name"=>"Skirmisher's Sabre (Enchantment: Warrior)"}],
       "hp"=>100},
     "mid"=>
      {"id"=>9000,
       "name"=>"Ucal",
       "champion"=>
        {"id"=>2261,
         "name"=>"Sion",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/ad52afc162da628a258d89739eadad12.png"},
       "cs"=>136,
       "level"=>10,
       "kills"=>2,
       "deaths"=>0,
       "assists"=>1,
       "summoner_spells"=>
        [{"id"=>39, "name"=>"Teleport"}, {"id"=>28, "name"=>"Flash"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         nil,
         {"id"=>763, "name"=>"Control Ward"},
         {"id"=>607, "name"=>"Broken Stopwatch"},
         {"id"=>700, "name"=>"Mercury's Treads"},
         {"id"=>757, "name"=>"Righteous Glory"}],
       "hp"=>75},
     "adc"=>
      {"id"=>2169,
       "name"=>"Deft",
       "champion"=>
        {"id"=>2269,
         "name"=>"Kai'Sa",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/add835084b5385c8929c49c77c86a9cd.png"},
       "cs"=>149,
       "level"=>9,
       "kills"=>2,
       "deaths"=>0,
       "assists"=>1,
       "summoner_spells"=>
        [{"id"=>28, "name"=>"Flash"}, {"id"=>30, "name"=>"Heal"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         nil,
         {"id"=>741, "name"=>"Doran's Ring"},
         {"id"=>692, "name"=>"Pickaxe"},
         {"id"=>753, "name"=>"Berserker's Greaves"},
         {"id"=>2293, "name"=>"Stormrazor"}],
       "hp"=>90},
     "sup"=>
      {"id"=>137,
       "name"=>"Mata",
       "champion"=>
        {"id"=>114,
         "name"=>"Shen",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/b1b039683bb21d218d14d20134028a7b.png"},
       "cs"=>33,
       "level"=>8,
       "kills"=>0,
       "deaths"=>0,
       "assists"=>2,
       "summoner_spells"=>
        [{"id"=>28, "name"=>"Flash"}, {"id"=>26, "name"=>"Ignite"}],
       "items"=>
        [{"id"=>1650, "name"=>"Oracle Lens"},
         nil,
         {"id"=>854, "name"=>"Minion Dematerializer"},
         {"id"=>695, "name"=>"Health Potion"},
         {"id"=>606, "name"=>"Slightly Magical Boots"},
         {"id"=>668, "name"=>"Null-Magic Mantle"},
         {"id"=>589, "name"=>"Eye of the Aspect"}],
       "hp"=>100}},
   "herald"=>0,
   "inhibitors"=>0},
 "red"=>
  {"id"=>1583,
   "name"=>"MAD Team",
   "acronym"=>"MAD",
   "towers"=>1,
   "gold"=>22700,
   "kills"=>4,
   "drakes"=>0,
   "nashors"=>0,
   "score"=>0,
   "players"=>
    {"top"=>
      {"id"=>1248,
       "name"=>"Liang",
       "champion"=>
        {"id"=>550,
         "name"=>"Camille",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/985146cb1fb2beef0affd8d5fadc7451.png"},
       "cs"=>114,
       "level"=>10,
       "kills"=>3,
       "deaths"=>1,
       "assists"=>1,
       "summoner_spells"=>
        [{"id"=>39, "name"=>"Teleport"}, {"id"=>28, "name"=>"Flash"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         {"id"=>730, "name"=>"Refillable Potion"},
         {"id"=>697, "name"=>"Doran's Blade"},
         {"id"=>697, "name"=>"Doran's Blade"},
         {"id"=>1649, "name"=>"Ninja Tabi"},
         {"id"=>860, "name"=>"Tiamat"}],
       "hp"=>100},
     "jun"=>
      {"id"=>1145,
       "name"=>"Benny",
       "champion"=>
        {"id"=>2300,
         "name"=>"Nocturne",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/8e6827b2850371389fe0337aa33932c2.png"},
       "cs"=>88,
       "level"=>9,
       "kills"=>1,
       "deaths"=>2,
       "assists"=>2,
       "summoner_spells"=>
        [{"id"=>36, "name"=>"Smite"}, {"id"=>28, "name"=>"Flash"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         nil,
         {"id"=>730, "name"=>"Refillable Potion"},
         {"id"=>671, "name"=>"Cloth Armor"},
         {"id"=>650, "name"=>"Boots of Speed"},
         {"id"=>830, "name"=>"Skirmisher's Sabre (Enchantment: Warrior)"}],
       "hp"=>75},
     "mid"=>
      {"id"=>7669,
       "name"=>"Uniboy",
       "champion"=>
        {"id"=>2240,
         "name"=>"Lissandra",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/6419f4dd0a0829176487b76ac1c451da.png"},
       "cs"=>142,
       "level"=>11,
       "kills"=>0,
       "deaths"=>0,
       "assists"=>2,
       "summoner_spells"=>
        [{"id"=>28, "name"=>"Flash"}, {"id"=>39, "name"=>"Teleport"}],
       "items"=>
        [{"id"=>1650, "name"=>"Oracle Lens"},
         nil,
         {"id"=>763, "name"=>"Control Ward"},
         {"id"=>780, "name"=>"The Dark Seal"},
         {"id"=>724, "name"=>"Corrupting Potion"},
         {"id"=>831, "name"=>"Ionian Boots of Lucidity"},
         {"id"=>799, "name"=>"Hextech Protobelt-01"}],
       "hp"=>85},
     "adc"=>
      {"id"=>489,
       "name"=>"Breeze",
       "champion"=>
        {"id"=>2284,
         "name"=>"Xayah",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/1cc5dde149711568fc0253729d625186.png"},
       "cs"=>112,
       "level"=>8,
       "kills"=>0,
       "deaths"=>1,
       "assists"=>0,
       "summoner_spells"=>
        [{"id"=>28, "name"=>"Flash"}, {"id"=>30, "name"=>"Heal"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         nil,
         nil,
         nil,
         {"id"=>650, "name"=>"Boots of Speed"},
         {"id"=>699, "name"=>"Doran's Shield"},
         {"id"=>2293, "name"=>"Stormrazor"}],
       "hp"=>100},
     "sup"=>
      {"id"=>486,
       "name"=>"K",
       "champion"=>
        {"id"=>6,
         "name"=>"Gragas",
         "image_url"=>
          "https://storage.googleapis.com/ppanda/images/lol/champion/image/e7eb3fb357e71d7673434cef9ca1ffe2.png"},
       "cs"=>6,
       "level"=>7,
       "kills"=>0,
       "deaths"=>1,
       "assists"=>0,
       "summoner_spells"=>
        [{"id"=>28, "name"=>"Flash"}, {"id"=>26, "name"=>"Ignite"}],
       "items"=>
        [{"id"=>686, "name"=>"Warding Totem (Trinket)"},
         {"id"=>695, "name"=>"Health Potion"},
         {"id"=>763, "name"=>"Control Ward"},
         {"id"=>682, "name"=>"Total Biscuit of Everlasting Will"},
         {"id"=>672, "name"=>"Ruby Crystal"},
         {"id"=>2280, "name"=>"Frostfang"},
         {"id"=>831, "name"=>"Ionian Boots of Lucidity"}],
       "hp"=>90}},
   "herald"=>0,
   "inhibitors"=>0},
 "tournament"=>{"id"=>1676},
 "match"=>{"id"=>57877},
 "game"=>{"id"=>201865, "finished"=>false},
 "current_timestamp"=>843}
```


### Need help ?

[Send us an email](mailto:hello@pandascore.co) or [Join our public slack channel](https://pandascore.slack.com)
