#Author: your.email@your.domain.com
Feature: To create the Job entry in the application

  Background: Create and Intialize base Url
    Given url 'https://reqres.in'
    And print "==================>Background keyword==================>"

  Scenario: To create the Job Entry in Json Format
    Given path '/api/users'
    * def body = read("data/jobEntry.json")
    And request  body
    #And header {Connection:'keep-alive'}
    When method post
    And status 201
    And print response
    And match response.id =="936"

  Scenario: To create the Job Entry in XML Format
    Given path '/api/users'
    * def body = read("data/JsonEntry.xml")
    And request  body
    #And header {Connection:'keep-alive'}
    When method post
    And status 201
    And print response
    And match response/root/id == "#notpresent"

  Scenario: To create the Job Entry in Json Format
    Given path '/api/users'
    * def getid  = function() {return Math.floor(10) * Math.random());}
    And request  {"name": "morpheus","job": "leader","id": '#(getid())',"createdAt": "2022-08-01T10:53:32.524Z"}
    #And header {Connection:'keep-alive'}
    When method post
    And status 201
    And print response
    And match response.name =="morpheus"
