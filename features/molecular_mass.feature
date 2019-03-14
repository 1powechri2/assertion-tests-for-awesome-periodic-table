Feature: User type a molecule into the molecular mass calculator
  and it calculates the molecular mass.
  Scenario: Find a molecule's molecular mass
    Given Mason enters "C6H12O6" into the molecular mass field
    When He clicks "Calculate Mass"
    Then He should see "The molecule C6H12O6 Has a mass of 340.146 grams"
