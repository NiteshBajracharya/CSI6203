#!/bin/bash

bash ../week6/Triangle.sh | sed 's/The area of the triangle with the base/Base/g' | sed 's/and height/Height/g' | sed 's/is/Area/g'