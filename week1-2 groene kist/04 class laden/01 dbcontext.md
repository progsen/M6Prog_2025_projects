## Include

- maak een extra file onder dataclasses:
    - `groenekistdb.php`

- include_once:
    - de database.php
    - alle data classes

- die van mij ziet er zo uit:
    > ![](img/dbheader.PNG)
- lees:
    ```
    - we hebben nu een soort include file gemaakt waarmee we makkelijk al onze database classes kunnen importeren. dat scheelt werk
    ```


## header

- lees:
    ```
    - waarschijnlijk hebben we op elke pagina onze database nodig
    - als je opzet goed is heb je een header.php waar je scripts/style etc in staan
    ```

- in je header include je groenekistdb.php
    > ![](img/header.PNG)
- in groenekistdb.php:
    - maak je een nieuw connection object

## LET OP

- lees:
    ```
    - nu hebben we een globale connection variable , dus oude code valt hier over 
        - bijvoorbeeld:
            - je groente en fruit pagina
    ```
- verbeter dat nu even
    > HINT haal de dubbele oude variable weg ^^
## controlleren

- check met de docent je werk
- commit & push!