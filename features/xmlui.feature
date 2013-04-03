Feature: xmlui
    In order to browse the repository
    As an information seeker
    I want to be able to list repository items

    Scenario: Visit xmlui the homepage
        Given that I am on the xmlui home page
        Then I should see "The Atrium, University of Guelph Institutional Repository"
        And I should see "Communities in the Atrium"

    Scenario: Browse Communities
        Given that I am on the xmlui home page
        And I click the "Communities & Collections" link
        Then I should see "Communities in the Atrium"
        And I should see "Theses & Dissertations - All (2011- )"

    Scenario: Browse By Issue Date
        Given that I am on the xmlui home page
        And I click the "By Issue Date" link
        Then I should see "Browsing by Issue Date"
        And I should see "OAC Review Volume 49 Issue 6, March 1937"

    Scenario: Browse By Author
        Given that I am on the xmlui home page
        And I click the "Authors" link
        Then I should see "Browsing by Author"
        And I should see "Abbas, Fazal"

    Scenario: Browse By Title
        Given that I am on the xmlui home page
        And I click the "Titles" link
        Then I should see "Browsing by Title"
        And I should see "000 - Front cover"

    Scenario: Browse By Subject
        Given that I am on the xmlui home page
        And I click the "Subjects" link
        Then I should see "Browsing by Subject"
        And I should see "0,0 transition energies"