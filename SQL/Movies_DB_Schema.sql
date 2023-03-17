CREATE TABLE "cleaned_movies"(
	"id" int not null,
	"title" varchar not null,
	"budget" int not null,
	"revenue" int not null,
	"original_language" varchar not null,
	"popularity" float not null,
	"production_countries" varchar not null,
	"production_companies" varchar not null,
	"genre_1" varchar not null,
	"genre_2" varchar not null,
	"genre_3" varchar not null,
	"genre_4" varchar not null,
	"release_date" varchar not null,
	"runtime" int not null,
	"status" varchar not null,
	"tagline" varchar not null,
	"vote_average" float not null,
	"vote_count" int not null,
	CONSTRAINT "pk_cleaned_movies" PRIMARY KEY (
	"id"
	)
);

Select * from cleaned_movies;

Create table "successful_genres" (
	"id" int not null,
	"genre_1" varchar not null,
	"genre_2" varchar not null,
	"genre_3" varchar not null,
	"genre_4" varchar not null,
	"popularity" float not null,
	"budget" int not null,
	"revenue" int not null,
	CONSTRAINT "pk_successful_genres" PRIMARY KEY (
	"id"
	)
);

SELECT * FROM successful_genres;

Create table "popular_filmed_countries" (
	"id" int not null,
	"popularity" float not null,
	"production_countries" varchar not null,
	"revenue" int not null,
	CONSTRAINT "pk_popular_filmed_countries" PRIMARY KEY (
	"id"
	)
);

Select * from popular_filmed_countries;

Create table "budget_influenced_rating" (
	"id" int not null,
	"popularity" float not null,
	"budget" int not null,
	CONSTRAINT "pk_budget_influenced_rating" PRIMARY KEY (
	"id"
	)
);

Select * from budget_influenced_rating;

