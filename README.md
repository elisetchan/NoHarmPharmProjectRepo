# MySQL + Flask Boilerplate Project

NoHarmPharm (team made up of Walla Rahama, Elise Chan, and Kimin Kim) is proud to present our work on PharmInform. This app is meant to be an amalgamation of several different database functionalities found in existing Pharmacy resources, but presented in a way that allows multiples types of users to access their info all with one app, rather than flipping between multiple websites. PharmInform is meant for patients to manage and learn more about their prescriptions, for students to access study tools as they learn new medications in lecture, and for pharmacists to manage their patients' medication regimens, clinic specific trials, and check against drug information resources to enhance their practice. This is a proof of concept of a one stop shop for anyone looking to learn more about and work in pharmacy. 

This project uses 3 Docker containers: 
1. A MySQL 8 container for obvious reasons
2. A Python Flask container to implement a REST API
3. A Local AppSmith Server

## How to setup and start the containers
**Important** - you need Docker Desktop installed
To run PharmInform, make sure that Docker Desktop is installed. Then, please follow these steps to launch the containers and the Appsmith interface:
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
2. Build the images with `docker compose build`
3. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 
4. In a browser, navigate to 'localhost:8080' to access the local instance of Appsmith and view current wireframes.