## auth


- lees:
```
- tot nu toe mag iedereen bij onze api, dat is natuurlijk niet de bedoeling.
- Tegenwoordig gebruiken we soms JWT tokens of OAUTH), maar dat is vrij complex. dus laten we voor nu een iets simpelere variant maken
    - gebruik dit niet in echte projecten! 
    - dit is om een beetje beeld te geven van tokens en auth met hashing
    - wel laten onze tokens voor nu even NIET verlopen
- onze API test tool heeft een veld voor tokens, deze gaan we nu gebruiken
    - TIP: zet daar bij value even je token in!
```

## tool

- we moeten eerst de tool aanpassen zodat we een Authorisation header meesturen.
    - voeg een header toe met de naam `Authorization`:
        > ![](img/header.PNG)
    - maak nu een json object:
    ```json
    {
        "header": {
            "claimId":userid,
            "authkey":"jekey"
            },


    }
    ```

    - maak van je json een string
    - en zet die als value van je header

## checking in de debugger

- open je web debugger
- controlleer of je header meegestuurd wordt
    > ![](img/checkheader.PNG)
- check met de docent of alles klopt


## klaar?

- commit & push!