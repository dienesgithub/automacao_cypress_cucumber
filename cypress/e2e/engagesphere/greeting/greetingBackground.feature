Feature: Greeting

  Background: access EngageSphere with the cookies consent banner already accepted
    Given I access the EngageSphere app having already accepted the cookies banner
  
  @engagesphere
  Scenario: shows the default greeting
    Then I see the following greeting: Hi there!
  @engagesphere
  Scenario: shows the customized greeting
    When I type "Dienes" in the name input filed
    Then I see the following greeting Hi "Dienes"!
  @engagesphere
  Scenario: shows the multiples customized greeting 
    When I type "<name>" in the name input filed
    Then I see the following greeting Hi "<name>"!    

    Examples:
      | name  |
      | Teste |
      | Stein |