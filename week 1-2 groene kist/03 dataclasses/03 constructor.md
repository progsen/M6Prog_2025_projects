
## Stap  2) we maken een constructor met evenveel argumenten als eigenschappen


- bekijk dit voorbeeld voor argumenten maken:

        ```php

        class TABELNAAM 
        {
            public int idTABELNAAM;
            public int property1;
            public string stringProperty2
            public function __construct( int $idTABELNAAM, int $property1,string $stringProperty2) 
            {
            }
            
        }
        ```
- lees:
    ```
    - zie je wat we doen?:
    1) voor elke property maken een een argument. eigenlijk hetzelfde alleen zonder de public
    - de constructor lijkt heel veel op een function. 
    ``` 
## Maken

- maak nu de argumenten voor je constructors voor alle data classes


## Stap 3) we zetten de waardes van de argumenten over naar de properties

- bekijk dit voorbeeld voor argumenten maken:

        ```php

        class TABELNAAM 
        {
            public int idTABELNAAM;
            public function __construct( int $idTABELNAAM) 
            {
                $this->idTABELNAAM=idTABELNAAM;
            }
            
        }
        ```
- lees:
    ```
    - zie je wat we doen?:
        1) voor elk argument kopieeren we de waarde naar de class property
        2) we gebruiken het speciale $this-> om bij onze instantie van de class te komen
    ``` 

## Maken

- maak nu je constructor compleet net als in het voorbeeld hierboven

## controlleren

- check met de docent je werk
- commit & push!