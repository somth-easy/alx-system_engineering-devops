#!/usr/bin/env ruby

pattern = /\[from:([^]]+)?\] \[to:([^]]+)?\] \[flags:([^]]+)?\]/
File.foreach(ARGV[0]) do |line|
    matches = line.scan(pattern)
      matches.each do |match|
            puts match.join(' ') unless match.empty?
              end
end

