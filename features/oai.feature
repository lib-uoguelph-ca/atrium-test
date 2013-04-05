Feature: oai
    In order to interact with the repository
    As an integration service
    I want to be access the content of the repository

    Scenario: Identify the OAI PMH Endpoint
        Given that I am on the OAI identification page
        Then the xml should contain "The Atrium Institutional Repository"

    Scenario: Check supported Metadata formats
        Given that I am on the OAI list formats page
        Then the xml should contain "oai_dc"
        And the xml should contain "oai_etdms"