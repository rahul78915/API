Feature: To validate the get endpoint

  Background: set the base url
    Given: url 'https://jobportalkarate.herokuapp.com'


  Scenario: To get the data in JSON format
    Given path '/normal/webapi/all'
    And header Accept='application/json'
    When the method get
    Then the status 200
    And print response
    And match !=
      """

      """

  Scenario: To get the data in xml format
    Given path '/normal/webapi/all'
    And header Accept='application/xml'
    When method get
    Then status 200
    And print response
    And match !=
      """
     

      """
