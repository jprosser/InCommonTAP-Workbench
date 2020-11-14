This is a demonstration of using midPoint dockerization for TIER environment in a broader context. It is a work in progress.

# Building and execution
```
$ ../../build.sh
$ docker-compose up --build
```

NOTE: The workbench requires that an environment variable named CSPHOSTNAME be set.  Just set it to 'localhost' for a local build.

Please see a detailed description [here](https://spaces.at.internet2.edu/display/MID/Complex+midPoint+integration+demo).

NOTE: This environment works with Docker for Windows CE, but before cloning this repository, ensure that your git client on Windows does not translate LF line endings into CRLF line endings or the mq and grouper_daemon contains will not start.  This can be done using the command: 'git config --global core.autocrlf false'
