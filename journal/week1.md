# Week 1 — App 

## Homework

I followed along with the live bootcamp twice and succesfully launched Docker and have the backend and frontend working.

Successfully connected the backend port 4567 to display code, had errors initialy due to naming of class in app.py, worked through it by searching through the code and replacing with either correctly spelled Notifications or ShowActivity was misspelled.

![Proof of fronend working](assets%20week%201/Frontend%20and%20Backend%20Configured%20week%201.png)

Backend had similiar errors but able to find and fix. Frontend and backend is working and displaing notification page as expected.

Installed DyanamoDB and Postgres, following along with Andrew's video.

![Proof of work](assets%20week%201/DynamoDB%20and%20Postgres%20with%20port%20800%20installed%20Week%201.png)

Did the 100DyasOfCode installing docker local as well

Intsall Postgres client:

``` sh
 - name: postgres
    init: |
      curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/postgresql.gpg
      echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
      sudo apt update
      sudo apt install -y postgresql-client-13 libpq-dev
      
 ```

Configured postgres database and completed all video homework
![Proof of work] ()



