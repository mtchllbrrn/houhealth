# HouHealth

HouHealth is a webapp for viewing Houston's [publicly-available](data.ohouston.org) health code data.

## Installation
Clone the repo, navigate to it, and run `./setup.sh` to create the databases and generate all of the model entries.

This app is [Dockerized](https://www.docker.com) and relies upon Docker Compose for provisioning. Get those set up, and run the following commands from within the HouHealth project directory:

```bash
# Build the appropriate Docker images
docker-compose build
# Run the images
docker compose up
# Create the databases, generate model data
docker exec houhealth_web ./setup.sh
# Run the app server
rails s --binding 0.0.0.0
```

The app is now running and may be accessed in your browser at `localhost:3000`.

## License
This app is licensed via the [MIT License](http://opensource.org/licenses/MIT).
