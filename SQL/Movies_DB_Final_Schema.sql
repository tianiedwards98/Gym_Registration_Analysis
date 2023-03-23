CREATE TABLE "cleaned_movies"(
	"id" int not null,
	"title" varchar not null,
	"budget" float not null,
	"revenue" float not null,
	"original_language" varchar not null,
	"popularity" float not null,
	"production_countries" varchar ,
	"production_companies" varchar ,
	"genre_1" varchar ,
	"genre_2" varchar ,
	"genre_3" varchar ,
	"genre_4" varchar ,
	"release_date" varchar ,
	"runtime" float ,
	"status" varchar ,
	"tagline" varchar ,
	"vote_average" float not null,
	"vote_count" int not null,
	CONSTRAINT "pk_cleaned_movies" PRIMARY KEY (
	"id"
	)
);

Select * from cleaned_movies;

Create table "successful_genres" (
	"id" int not null,
	"genre_1" varchar ,
	"genre_2" varchar ,
	"genre_3" varchar ,
	"genre_4" varchar ,
	"popularity" float not null,
	"budget" float not null,
	"revenue" float not null,
	CONSTRAINT "pk_successful_genres" PRIMARY KEY (
	"id"
	)
);

SELECT * FROM successful_genres;

Create table "popular_filmed_countries" (
	"id" int not null,
	"popularity" float not null,
	"production_countries" varchar ,
	"revenue" float not null,
	CONSTRAINT "pk_popular_filmed_countries" PRIMARY KEY (
	"id"
	)
);

Select * from popular_filmed_countries;

Create table "budget_influenced_rating" (
	"id" int not null,
	"vote_average" float not null,
	"budget" float not null,
	CONSTRAINT "pk_budget_influenced_rating" PRIMARY KEY (
	"id"
	)
);

Select * from budget_influenced_rating;