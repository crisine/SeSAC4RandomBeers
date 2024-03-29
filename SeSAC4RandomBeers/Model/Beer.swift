//
//  Beer.swift
//  SeSAC4RandomBeers
//
//  Created by Minho on 1/16/24.
//

/*
 [
   {
     "id": 108,
     "name": "American Ale",
     "tagline": "Unleash the Yeast Series.",
     "first_brewed": "09/2013",
     "description": "Our Unleash the Yeast series was an epic experiment into the differences in aroma and flavour provided by switching up your yeast. We brewed up a wort with a light caramel note and some toasty biscuit flavour, and hopped it with Amarillo and Centennial for a citrusy bitterness. Everything else is down to the yeast. American Ale used a clean fermenting strain which provides some faint fruity notes.",
     "image_url": "https://images.punkapi.com/v2/108.png",
     "abv": 6.3,
     "ibu": 55,
     "target_fg": 1012,
     "target_og": 1060,
     "ebc": 30,
     "srm": 15,
     "ph": 4.4,
     "attenuation_level": 80,
     "volume": {
       "value": 20,
       "unit": "litres"
     },
     "boil_volume": {
       "value": 25,
       "unit": "litres"
     },
     "method": {
       "mash_temp": [
         {
           "temp": {
             "value": 65,
             "unit": "celsius"
           },
           "duration": null
         }
       ],
       "fermentation": {
         "temp": {
           "value": 19,
           "unit": "celsius"
         }
       },
       "twist": null
     },
     "ingredients": {
       "malt": [
         {
           "name": "Extra Pale",
           "amount": {
             "value": 4.58,
             "unit": "kilograms"
           }
         },
         {
           "name": "Caramalt",
           "amount": {
             "value": 0.25,
             "unit": "kilograms"
           }
         },
         {
           "name": "Dark Crystal",
           "amount": {
             "value": 0.06,
             "unit": "kilograms"
           }
         },
         {
           "name": "Munich",
           "amount": {
             "value": 0.25,
             "unit": "kilograms"
           }
         }
       ],
       "hops": [
         {
           "name": "Centennial",
           "amount": {
             "value": 5,
             "unit": "grams"
           },
           "add": "start",
           "attribute": "bitter"
         },
         {
           "name": "Amarillo",
           "amount": {
             "value": 5,
             "unit": "grams"
           },
           "add": "start",
           "attribute": "bitter"
         },
         {
           "name": "Centennial",
           "amount": {
             "value": 10,
             "unit": "grams"
           },
           "add": "middle",
           "attribute": "flavour"
         },
         {
           "name": "Amarillo",
           "amount": {
             "value": 10,
             "unit": "grams"
           },
           "add": "middle",
           "attribute": "flavour"
         },
         {
           "name": "Centennial",
           "amount": {
             "value": 17.5,
             "unit": "grams"
           },
           "add": "end",
           "attribute": "flavour"
         },
         {
           "name": "Amarillo",
           "amount": {
             "value": 17.5,
             "unit": "grams"
           },
           "add": "end",
           "attribute": "flavour"
         }
       ],
       "yeast": "Wyeast 1272 - American Ale II™"
     },
     "food_pairing": [
       "Fried brie bites",
       "American cheese burger",
       "Poached apple tart"
     ],
     "brewers_tips": "Play around with the fermentation temperature to get the best flavour profile from the individual yeasts.",
     "contributed_by": "Ali Skinner <AliSkinner>"
   }
 ]*/

struct Beer: Codable {
    let name: String
    let description: String
    let image_url: String
}
