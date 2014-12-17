# API-Users Application

App for creating, modifying, and deleting users.  Returns formatted responses in both HTML and JSON.

To test drive the application:

- [Git clone](https://github.com/hpjaj/API-users.git) the repository
- Run `$ bundle`
- Migrate and seed the SQLite3 databases (`rake db:migrate` and `rake db:seed`)
- Start the server, `$ rails s`, and browse to `localhost:3000` 
- Create, edit and delete a user
- To visualize the JSON data, add `.json` to the end of the URL. For example:
  - http://localhost:3000/users.json
  - http://localhost:3000/users/17.json

- Or use a tool like the [Postman - REST Client](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en) Chrome extension to visualize the JSON data
  - Create a custom accept header preset
    - Click *Manage Presets* and create a header preset called `JSON Accept`
    - Set the `key` to `Accept`
    - Set its `value to `application/json`
  - Run tests with the following URL / HTTP verb combinations
    - http://localhost:3000/users/ with GET
    - http://localhost:3000/users/17 with GET
    - http://localhost:3000/users/ with POST, along with form-data

- To run the feature specs, call `$ rspec` from the command line

