# language: en
#
# Rangering: http://www.thepokerforum.com/pokerhands.htm
#
Feature: Range hands

  Scenario: Rate high cards
    Given white has H2
    Then white should have 2 points
    