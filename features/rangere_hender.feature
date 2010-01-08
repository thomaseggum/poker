# language: en
#
# Rangering: http://www.thepokerforum.com/pokerhands.htm
#
Feature: Range hands

  Scenario: Rate high cards
    Given white has H8 S2 K3 H4 S5 H6 R7
    And black has H8 S2 K3 H4 S5 H9 S10
    Then black should win

  Scenario: Rate pair
    Given white has H8 S2 K3 H4 S5 H6 R8
    And black has H8 S2 K3 H4 S5 K2 S11
    Then white should win

  Scenario: Rate pair with highest card
    Given white has H8 S2 K3 H4 S5 H6 R13
    And black has H8 S2 K3 H4 S5 K2 S11
    Then black should win
    And card combination should be pair