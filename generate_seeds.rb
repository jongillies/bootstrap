#!/usr/bin/env ruby

require 'faker'
require 'active_support/all'

1000.times do |i|

  puts '-'
  puts "  title: #{Faker::Lorem.words(rand(5)+3).map(&:capitalize).join(' ')}"
  puts "  description: #{Faker::Lorem.paragraphs(rand(5)+3).join('\n')}"
  puts "  user_id: #{rand(10)+1}"
  created = rand(2.years).ago
  puts "  created_at: #{created}"
  puts "  updated_at: #{created + rand(5).day + rand(5).hours}"

end
