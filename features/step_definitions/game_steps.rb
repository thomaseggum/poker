# encoding: utf-8
$:.unshift(File.dirname(__FILE__) + '/../../lib')
#require 'poker'

Given /^(.*) has (.*)$/ do |player, hand|
  @hand = hand
end

Then /^(.*) should have (.*) points$/ do |player, points|
  @poker = Poker.new
  points = @poker.rateHand(@hand)
end


