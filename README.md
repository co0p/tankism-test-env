Tankism-Test-Env
================

This is the docker container to run the tankism test suite in.


Deployment
-----------

There is an automated build / push webhook: http://ci.co0p.org/co0p/tankism-test-Env

See .drone.yml for details


Container details
-----------------

Tankism relies on sdl2 and golang to be build. Since most of the devs are using one flavor or 
linux we decided to use ubuntu lts as a base. 

See Dockerfile for details


Building image
-------------

 * a simple ```docker build -t tankism-test-env:local .``` should be enough
 

Usage
------

The image is used by the ci system to execute the tests. To use it locally please pull the latest image from
https://hub.docker.com/co0p/tankism-test-env 

 * docker run 
