-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "nyc_listings" (
    "id" bigint   NOT NULL,
    "name" text   NOT NULL,
    "host_id" bigint   NOT NULL,
    "host_name" text   NOT NULL,
    "borough" text   NOT NULL,
    "neighborhood" text   NOT NULL,
    "latitude" double_precision   NOT NULL,
    "longitude" double_precision   NOT NULL,
    "room_type" text   NOT NULL,
    "price" bigint   NOT NULL,
    "minimum_nights" bigint   NOT NULL,
    "number_of_reviews" bigint   NOT NULL,
    "availability_365" bigint   NOT NULL,
    "days_since_last_review" bigint   NOT NULL,
    CONSTRAINT "pk_nyc_listings" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "nyc_listings2" (
    "id" bigint   NOT NULL,
    "room_type" text   NOT NULL,
    "number_of_reviews" bigint   NOT NULL,
    "days_since_last_review" bigint   NOT NULL,
    CONSTRAINT "pk_nyc_listings2" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "nyc_listings3" (
    "id" bigint   NOT NULL,
    "host_id" bigint   NOT NULL,
    "host_name" text   NOT NULL,
    "borough" text   NOT NULL,
    CONSTRAINT "pk_nyc_listings3" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "nyc_listings" ADD CONSTRAINT "fk_nyc_listings_id_room_type" FOREIGN KEY("id", "room_type")
REFERENCES "nyc_listings2" ("id", "room_type");

ALTER TABLE "nyc_listings2" ADD CONSTRAINT "fk_nyc_listings2_id" FOREIGN KEY("id")
REFERENCES "nyc_listings3" ("id");

ALTER TABLE "nyc_listings2" ADD CONSTRAINT "fk_nyc_listings2_number_of_reviews_days_since_last_review" FOREIGN KEY("number_of_reviews", "days_since_last_review")
REFERENCES "nyc_listings" ("number_of_reviews", "days_since_last_review");

ALTER TABLE "nyc_listings3" ADD CONSTRAINT "fk_nyc_listings3_host_id_host_name_borough" FOREIGN KEY("host_id", "host_name", "borough")
REFERENCES "nyc_listings" ("host_id", "host_name", "borough");

