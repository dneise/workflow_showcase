# workflow_showcase
repo to show how to let the work flow :D

# Purpose

ACS Component, which can store “a_number“ and
publish it as an attribute.

![Store a number image](https://cdn.pixabay.com/photo/2017/08/10/00/28/containers-2616457_960_720.jpg "Store a number image")

# Build and Test

    cd example/src && make all install

For details please have a look at the `.travis.yml`.

# Detailed Design 

This provides an ACS Component, with a simple interface.
It can store a `long long`, which can be set using the `set()` method,
and it can be read via the `value` attribute.
