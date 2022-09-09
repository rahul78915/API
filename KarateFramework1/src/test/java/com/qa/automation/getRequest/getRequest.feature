
Feature: To test the get endpoint URL
  Background:Given url 'https://jobportalkarate.herokuapp.com'
  And print "=============Background Keyword ================="

  Scenario: To get the all the data from application JSON format
  #Given url '/normal/webapi/all'
  Given url'/normal/webapi/all'
  When method get
  Then status 200

  