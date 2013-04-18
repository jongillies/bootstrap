#!/usr/bin/env ruby

require 'faker'

1000.times do |i|

  puts '-'
  puts "  title: #{Faker::Lorem.words(rand(5)+3).map(&:capitalize).join(' ')}"
  puts "  description: #{Faker::Lorem.paragraphs(rand(5)+3).join('\n')}"
  puts "  user_id: #{rand(10)+1}"


end
