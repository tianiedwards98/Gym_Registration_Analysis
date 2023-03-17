CREATE TABLE "original_movies_metadata"(
	"adult" boolean NOT NULL,
	"belongs_to_collection" varchar NOT NULL,
	"budget" int not null,
	"genres" varchar not null,
	"homepage" varchar not null,
	"id" int not null,
	"imdb_id" varchar not null,
	"original_language" varchar not null,
	"original_title" varchar not null,
	"overview" varchar not null,
	"popularity" float not null,
	"poster_path" varchar not null,
	"production_companies" varchar not null,
	"production_countries" varchar not null,
	"release_date" varchar not null,
	"revenue" int not null,
	"runtime" int not null,
	"spoken_language" varchar not null,
	"status" varchar not null,
	"tagline" varchar not null,
	"video" boolean not null,
	"vote_average" float not null,
	"vote_count" int not null,
	CONSTRAINT "pk_original_movies_metadata" PRIMARY KEY (
	"id"
	)
);

CREATE TABLE "cleaned_movies"(
	"id" int not null,
	"title" varchar not null,
	"budget" int not null,
	"revenue" int not null,
	"genres" varchar not null,
	"original_language" varchar not null,
	"popularity" float not null,
	"production_companies" varchar not null,
	"production_countries" varchar not null,
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

Select * from original_movies_metadata;

INSERT INTO original_movies_metadata(adult,
									 belongs_to_collection,
									 budget,
									 genres,
									 homepage,
									 id,
									 imdb_id,
									 original_language
									 ,original_title,
									 overview,
									 popularity,
									 poster_path,
									 production_companies,
									 production_countries,
									 release_date,
									 revenue,
									 runtime,
									 spoken_language,
									 status,
									 tagline,
									 video,
									 vote_average,
									 vote_count)
VALUES(False,
	   '',
	   65000000,
	   'Adventure',
	   '',
	   8844,
	   'tt0113497',
	   'en',
	   'Jumanji',
	   'When siblings Judy and Peter discover an enchanted board game that opens the door to a magical world, they unwittingly invite Alan -- an adult who been trapped inside the game for 26 years into their living room. Alan only hope for freedom is to finish the game, which proves risky as all three find themselves running from giant rhinoceroses, evil monkeys and other terrifying creatures.',
	   17.015539,
	   '/vzmL6fP7aPKNKPRTFnZmiUfciyV.jpg','TriStar Pictures|Teitler Film|Interscope Communications','US','1995-12-15',262797249,104,'en','Released','Roll the dice and unleash the excitement!',False,6.9,2413);
	   

INSERT INTO cleaned_movies(id,
						   title,
						   budget,
						   revenue,
						   genres,
						   original_language,
						   popularity,
						   production_companies,
						   production_countries,
						   release_date,
						   runtime,
						   status,
						   tagline,
						   vote_average,
						   vote_count)
VALUES(15602,
	   'Grumpier Old Men',
	   0,
	   0,
	   'Romance|Comedy',
	   'en',
	   11.7129,
	   'Warner Bros',
	   'US',
	   '12/22/1995',
	   101,
	   'Released',
	   ' ',
	   6.5,
	   92);
	   
Select * from cleaned_movies;	   
	   
	   