# language: en
#
# Rangering: http://www.thepokerforum.com/pokerhands.htm
#
Feature: Range hands



  Scenario: Rate high cards
    Given white has H8 S2 K3 H4 S5 H6 R7
    And black has H8 S2 K3 H4 S5 H9 S10
    Then black should win
    And card combination should be highest

  Scenario: Rate high cards wher both have same highest :D
    Given white has H1 K2 S3 R4 H5 R6 R8
    And black has H1 K2 S3 R4 H5 R7 R8
    Then black should win
    And card combination should be highest

  Scenario: Rate pair
    Given white has H8 S2 K3 H4 S5 H6 R8
    And black has H8 S2 K3 H4 S5 K2 S11
    Then white should win
    And card combination should be pair

Scenario: Rate pair where both players have same pair :)
    Given white has H8 S2 K3 H4 S5 H6 R8
    And black has H8 S2 K3 H4 S5 K2 S11
    Then white should win
    And card combination should be pair

  Scenario: Rate pair with highest card
    Given white has H1 K2 S3 R4 H5 R6 R1
    And black has H1 K2 S3 R4 H5 R7 R1
    Then black should win
    And card combination should be pair

  Scenario: Rate two pairs
    Given white has H8 S2 K3 H4 S5 H6 R13
    And black has H8 S2 K3 H4 S5 K2 S8
    Then black should win
    And card combination should be twopairs

  Scenario: Rate two pairs against one pair
    Given white has H9 S9 K3 H4 S5 H6 R13
    And black has H8 S2 K3 H4 S5 K2 S8
    Then black should win
    And card combination should be twopairs