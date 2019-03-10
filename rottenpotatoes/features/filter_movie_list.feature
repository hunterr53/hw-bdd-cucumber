Feature: display list of movies filtered by MPAA rating
 
  As a concerned parent
  So that I can quickly browse movies appropriate for my family
  I want to see movies matching only certain MPAA ratings

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |

  And  I am on the RottenPotatoes home page

Scenario: restrict to movies with 'PG' or 'R' ratings
  When I check the following ratings: PG, R
  And I press "Refresh"
  Then I should see the following movies: Amelie, When Harry Met Sally, Raiders of the Lost Ark
  But I should not see the following movies: Aladdin, Chocolat, 2001: A Space Odyssey

Scenario: all ratings selected
  When I check the following ratings: G, PG, PG-13, NC-17, R
  And I press "Refresh"
  Then I should see all the movies

