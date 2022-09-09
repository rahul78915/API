#Author: your.email@your.domain.com
Feature: Validate the JSON schema
  To Validate the JSON schema for POST

  Background: Create and Intialize base Url
    Given url 'https://reqres.in'
    * def dateToLong =
      """
      function(s) {
        var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
        var sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss z");
        return sdf.parse(s).time;
      }

      """
    * def fun = function(x){ return dateToLong(x.timestamp) }
    * def dates = karate.map(response, fun)
    * print dates
    And print "==================>Background keyword==================>"

  Scenario: To create the Job Entry in Json Format
    Given path '/api/users'
    * def body = read("data/jobEntry.json")
    And request  body
    #And header {Connection:'keep-alive'}
    When method post
    And status 201
    And match response ==
      """
      "name": 'morpheus',
      "job": 'leader',
      "id": '936',
      "createdAt":'dateToLong+fun+dates'}

      """
