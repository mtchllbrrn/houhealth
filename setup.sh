#!/bin/bash

# Create databases
rake db:create
rake db:schema:load
rake db:migrate

# Generate data
rake generate_restaurant_entries_fy14
rake generate_violation_entries_fy12
rake generate_violation_entries_fy13
rake generate_violation_entries_fy14
