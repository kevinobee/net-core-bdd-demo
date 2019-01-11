Feature: Secure Access to Web App

    In order to feel safe using the Web App
    As a user
    I want to have my traffic encrypted

Scenario: Web Traffic is Encrypted
    Given the app is running
    When I visit the Home page
    Then I am served content over HTTPS

