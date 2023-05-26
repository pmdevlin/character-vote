# charater-vote

A place where you can go vote on your favorite characters from different movies.

- Stack
- Frontend
  - Angular
- Backend
  - SpringBoot
  - Java
- Database
  - Docker
  - postgres instance

# OMDB API KEY

- http://www.omdbapi.com/?i=tt3896198&apikey=1b8abb72

# Database Design

Users Table:

- user_id (Primary Key)
- username
- email
- password (encrypted)
- registration_date
- ... (other user-related fields)

Votes Table:

- vote_id (Primary Key)
- user_id (Foreign Key referencing user_id in the Users table)
- character_id (Foreign Key referencing character_id in the Characters table)
- vote_date
- vote_value (e.g., a numeric value representing the user's vote)

Comments Table:

- comment_id (Primary Key)
- user_id (Foreign Key referencing user_id in the Users table)
- character_id (Foreign Key referencing character_id in the Characters table)
- comment_text
- comment_date
