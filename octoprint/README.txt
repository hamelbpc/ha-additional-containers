  
  mandatory
  -------------
  need to install a custom plugin to get creality cr-100 to work under octoprint.

  after starting this container via docker-compose. 

  1. go to /var/lib/docker/volumes/_data/octoprint_octoprint/octoprint/plugins
  2. put crealitycr100fix.py into this directory
  3. restart octoprint

  Prints should now work.
  1. Make sure you get the hot end up to temperature(200 degrees) before issuing load and print.
  2. I found any preamble before printing (such as bringing print to temp) caused problems, so remove them.

  optional
  -------------

  Disable SD card support
  Settings->Features-> uncheck Enable SD Card Support
