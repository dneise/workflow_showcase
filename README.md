# workflow_showcase
repo to show how to let the work flow :D

# Purpose

ACS Component, which can store “a_number“ and
publish it as an attribute.

# Build and Test

    cd example/src && make all install

For details please have a look at the `.travis.yml`.

# Detailed Design 

This provides an ACS Component, with a simple interface.
It can store a `long long`, which can be set using the `set()` method,
and it can be read via the `value` attribute.
