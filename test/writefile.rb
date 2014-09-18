#!/usr/bin/env ruby
# This script works great
filename = ARGV.first
target = open(filename, 'w')
target.write( 'what are you doing?')
target.write("\n")
target.close
