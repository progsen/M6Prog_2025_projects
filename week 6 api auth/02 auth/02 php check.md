

## php

- maak in je source een nieuwe file:
    - `token.php`
- open je index.php
    - include de nieuwe file token.php

- maak een nieuwe function in token.php:
    > ![](img/valtoken.PNG)

## auth header checken

- vul de function zelf in lees wat deze moet doen:
    ```
    - de Authorization header ophalen
    - maak een json object wat je kan gebruiken in php
    - haal je user op 
    - check of de token van de user klopt
    ```

## index

- in index gaan we de function gebruiken, bouw het volgende:
    ```
    - roep de function aan
    - als die false teruggeeft (auth klopt niet, user niet gevonden etc)
        - dan zet je de response header op 403 en exit je het script
    - als het true (auth klopt) ga je verder
    ```

## testen

- test met de juiste auth token voor een user
- test met een verkeerde auth token:
    > ![](img/403.PNG)

- check met de docent of alles klopt


## klaar?

- commit & push!