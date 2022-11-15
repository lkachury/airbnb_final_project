-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "listings" (
    "id" int   NOT NULL,
    "name" string   NOT NULL,
    "host_id" int   NOT NULL,
    "host_name" string   NOT NULL,
    "borough" string   NOT NULL,
    "neighborhood" string   NOT NULL,
    "room_type" string   NOT NULL,
    "price" int   NOT NULL,
    CONSTRAINT "pk_listings" PRIMARY KEY (
        "host_id"
     )
);

CREATE TABLE "id" (
    "name" string   NOT NULL,
    "host_id" int   NOT NULL,
    "host_name" string   NOT NULL
);

CREATE TABLE "neighbourhood" (
    "host_id" int   NOT NULL,
    "host_name" string   NOT NULL,
    "room_type" string   NOT NULL,
    "price" int   NOT NULL
);

ALTER TABLE "id" ADD CONSTRAINT "fk_id_name_host_id_host_name" FOREIGN KEY("name", "host_id", "host_name")
REFERENCES "listings" ("name", "host_id", "host_name");

ALTER TABLE "neighbourhood" ADD CONSTRAINT "fk_neighborhood_host_id_host_name" FOREIGN KEY("host_id", "host_name")
REFERENCES "id" ("host_id", "host_name");

