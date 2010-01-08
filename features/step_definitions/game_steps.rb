# encoding: utf-8
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'poker'
require 'hand'

Before do
  @poker = Poker.new
end

Given /^(.*) has (.*)$/ do |player,cardHand|
  hand = Hand.new
  hand.player(player)
  hand.cardHand(cardHand)
  @poker.addHand(hand)
end

Then /^(.*) should win$/ do |player|
  player = @poker.findWinner
  player.should == "black"
end