Feature: Greeting

  Scenario: shows the default greeting
    Given I access the EngageSphere app having already accepted the cookies banner
    Then I see the following greeting: Hi there!

  Scenario: shows the customized greeting
    Given I access the EngageSphere app having already accepted the cookies banner
    When I type "Dienes" in the name input filed
    Then I see the following greeting Hi "Dienes"!

  Scenario: shows the multiples customized greeting 
    Given I access the EngageSphere app having already accepted the cookies banner
    When I type "<name>" in the name input filed
    Then I see the following greeting Hi "<name>"!    

    Examples:
      | name  |
      | Teste |
      | Stein |