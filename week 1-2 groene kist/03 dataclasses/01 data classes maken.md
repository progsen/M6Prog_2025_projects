
## database classes

- lees:
    ```
    vaak gebruiken we frameworks om van de database classes te maken, maar voordat je dat soort tools gaat gebruiken is het handig dat zelf een keer te maken zodat je weet wat er onderwater gebeurt.
    Dit helpt weer bij fouten oplossen 
    ```

## DBO

- maak onder source een folder dataclasses
- maak voor elke tabel een php file aan
    - zet in elke file een verwijzing naar je database.php
    - en gebruik dit class patroon om de code aan te maken
        ```php

        class TABELNAAM 
        {
                //hier komen later eigenschappen
            public function __construct() 
            {
            }
            
        }
        ```

## controlleren

- check met de docent je werk
- commit & push!