
## SQL scripts

- maak onder je docker map (waar ook je nginx conf enz staat):
    - een SQL map
    > ![](img/sqlmap.PNG)

- genereer je SQL scripts vanuit je ERD
    - sla deze op als 00_create.sql

## Relatie data

- je zal nu ook data moeten inserten voor je foreigh keys, dus een eerste vulling
    > dit gaat niet over content
    - sla deze op als 01_data.sql
    
## docker uitrol

- pas je docker file aan zodat deze de SQL scripts in de mysql container zet
    > ![](img/dockersql.PNG)
- verwijder je mariadb/mysql container
- compose up.
    - gaat je database online?
- controlleer of je tabellen nu zijn aangemaakt 


## commit

- commit & push!
