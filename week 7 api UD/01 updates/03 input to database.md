## UPDATE

- ga naar je bericht controller
- verander je handlePOST:
    ```
    - zorg dat deze een het bericht uit php://input leest
    - maak daar een bericht van
    - de dataclass Bericht krijg straks een UpdateBericht function
        - roep die alvast aan

    - daarna haal je het nieuwe bericht byID op
    - echo dat terug als json
    ```


## TEST

- test met je bericht via de tester
    - gebruik een POST
    - pak een bericht door de berichten met de tester op te halen
        - let op deze geeft een url als sender

        
## controlleren

- check met de docent of alles klopt
    
## klaar?

- commit & push!