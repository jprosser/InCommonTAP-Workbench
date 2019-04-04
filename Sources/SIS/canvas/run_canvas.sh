#!/bin/sh
# 
# run_canvas.sh, DESCRIPTION
# 
# Copyright (C) 2017 Tom Jordan
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# $Id:$
# Tom Jordan <tom.jordan@wisc.edu>

# wait until rabbit is up
until nc -vz tier-demo-rabbit 5672
do
        echo "Rabbit is unavailable - sleeping"
        sleep 1
done
echo "Rabbit is up!"

perl ./canvas.pl
