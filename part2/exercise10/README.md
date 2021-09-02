#### Solution
Basically the solution required only one change and that was needed to the frontend Dockerfile. 
The used url for the REACT_APP_BACKEND_URL environment variable was needed to change so that all the http requests
in the backend side were done correctly. Otherwise, some requests are done using different path in the url.
