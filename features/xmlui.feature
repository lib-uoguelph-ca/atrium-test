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

    Scenario: Search
        Given that I am on the xmlui home page
        And I fill in "query" in "#ds-options" with "Doan"
        And I click the "Go" button in "#ds-options"
        And I should see "Risky Business"

    Scenario: Streaming Video
        Given I am on "/handle/10214/2447"
        Then I should see "Video Stream"
        And I should see a video

    Scenario: Authentication
        Given that I have logged in
        Then I should see "Logout"

    Scenario: Item Mapper
        Given that I have logged in
        And I am on "/handle/10214/151"
        And I click the "Item Mapper" link
        And I fill in "query" in "#ds-body" with "Burpee"
        And I click the "Search Items" button
        Then I should see "Campus Author Recognition Program Annual Reception 2011"

    Scenario: ETD Submission
        Given that I have logged in
        And I am on "/submissions"
        And I click the "start a new submission" link
        And I choose "Theses & Dissertations - All (2011- )" from "handle"
        And I click the "Next" button
        And I click the "Next" button
        And I fill in "dc_title" with "Test"
        And I click the "Next" button
        And I click the "Next" button
        And I upload "/Users/doana/Code/atrium-test/features/support/files/atrium-test.pdf" in "file"
        And I click the "Next" button
        And I click the "Next" button
        And I click the "Next" button
        Then I should see "Distribution License"
        And I should see "Complete Submission"

    Scenario: Delete ETD Submissions
        Given that I have logged in
        And I am on "/submissions"
        And I check all of the checkboxes
        And I click the "Remove selected submissions" button
        Then I should see "Submissions"