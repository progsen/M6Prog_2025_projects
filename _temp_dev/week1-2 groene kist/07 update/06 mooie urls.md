
## Search engine optimalisation (SEO)

- lees:
```
- we weten dat we eigenlijk altijd over de search engines moeten nadenken voor onze klant
- dat betekent dat onze pagina's , dingen en producten makkelijk met woorden die mensen gebruiken op te zoeken gevonden moeten kunnen worden
- dus we moeten over goede urls voor onze pagina's nadenken
```

- voeg in de product tabel een slug colomn toe, gebruik een ALTER table statement en maak een nieuwe uitrol script 02_slug.sql
- default data + update

- lees:
    ```
    we gaan nu een colom toevoegen met een alter table statement.
    maar zodra we dat doen heeft de colom nog geen data.
    - wat als we deze colom nooit leeg willen hebben? daar moeten we over nadenken
    - een aantal oplossing tactieken:
    1) we zetten de colom op NULL, vullen de data, en daarna draaien we een update en veranderen daarna de colom naar NOT NULL
    2) we zetten de colom op NOT NULL, met een default data, bijvoorbeeld "" of "TODO". en draaien daarna een update voor de tabel
    ```