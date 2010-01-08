# language: en
#
# Rangering: http://www.thepokerforum.com/pokerhands.htm
#
Feature: Range hands

  Scenario: Rate high cards
    Given white has H8 S2 K3 H4 S5 H6 R7
    And black has H8 S2 K3 H4 S5 H9 S10
    Then black should win