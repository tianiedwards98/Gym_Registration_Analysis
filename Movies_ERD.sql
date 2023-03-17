-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Movies" (
    "movie_no" int   NOT NULL,
    "title" varchar   NOT NULL,
    "rating" float   NOT NULL,
    "year" int   NOT NULL,
    "month" varchar   NOT NULL,
    "certficate" varchar   NOT NULL,
    "runtime" int   NOT NULL,
    "directors" varchar   NOT NULL,
    "stars" varchar   NOT NULL,
    "genre" varchar   NOT NULL,
    "filming_location" varchar   NOT NULL,
    "budget" int   NOT NULL,
    "income" int   NOT NULL,
    "countryOfOrigin" int   NOT NULL,
    CONSTRAINT "pk_Movies" PRIMARY KEY (
        "movie_no"
     )
);

CREATE TABLE "Genre" (
    "movie_no" int   NOT NULL,
    "genre" varchar   NOT NULL,
    CONSTRAINT "pk_Genre" PRIMARY KEY (
        "movie_no"
     )
);

CREATE TABLE "Movie_Rating" (
    "movie_no" int   NOT NULL,
    "rating" float   NOT NULL,
    CONSTRAINT "pk_Movie_Rating" PRIMARY KEY (
        "movie_no"
     )
);

CREATE TABLE "Budget" (
    "movie_no" int   NOT NULL,
    "budget" int   NOT NULL,
    CONSTRAINT "pk_Budget" PRIMARY KEY (
        "movie_no"
     )
);

CREATE TABLE "Revenue" (
    "movie_no" int   NOT NULL,
    "income" int   NOT NULL,
    CONSTRAINT "pk_Revenue" PRIMARY KEY (
        "movie_no"
     )
);

ALTER TABLE "Movies" ADD CONSTRAINT "fk_Movies_movie_no" FOREIGN KEY("movie_no")
REFERENCES "Movie_Rating" ("movie_no");

ALTER TABLE "Genre" ADD CONSTRAINT "fk_Genre_movie_no" FOREIGN KEY("movie_no")
REFERENCES "Movies" ("movie_no");

ALTER TABLE "Budget" ADD CONSTRAINT "fk_Budget_movie_no" FOREIGN KEY("movie_no")
REFERENCES "Movies" ("movie_no");

ALTER TABLE "Revenue" ADD CONSTRAINT "fk_Revenue_movie_no" FOREIGN KEY("movie_no")
REFERENCES "Movies" ("movie_no");

