# encoding: utf-8
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'poker'
require 'hand'

Before do
  @poker = Poker.new
end

Given /^(.*) has (.*)$/ do |player,card_hand|
  hand = Hand.new
  hand.player = player
  hand.card_hand = card_hand
  @poker.addHand(hand)
end

Then /^(.*) should win$/ do |player|
  h = @poker.findWinner
  h.player.should == player
end

Then /^card combination should be (.*)$/ do | winnerComb |
  h = @poker.findWinner
  puts "What is it really?? #{h.winning_type}"
  h.winning_type.should == winnerComb
end