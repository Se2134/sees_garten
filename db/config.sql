-- The schema for the development Database

CREATE TABLE "plant" (
  "id" integer PRIMARY KEY,
  "speciesID" integer,
  "name" varchar(255),
  "got" date,
  "location" varchar(255),
  "substrate" integer,
  "watering" varchar(255),
  "fertilizing" varchar(255),
  "repotted" date,
  "health" varchar(255),
  "price" float,
  "notes" text,
  "project" integer,

  FOREIGN KEY ("project") REFERENCES "project" ("id"),
  FOREIGN KEY ("substrate") REFERENCES "substrate" ("id"),
  FOREIGN KEY ("speciesID") REFERENCES "plantSpecies" ("id")
);

CREATE TABLE "plantSpecies" (
  "id" integer PRIMARY KEY,
  "genus" varchar(255),
  "species" varchar(255),
  "veriety" varchar(255),
  "commonName" varchar(255),
  "origin" varchar(255)
);

CREATE TABLE "animal" (
  "id" integer PRIMARY KEY,
  "speciesID" integer,
  "name" varchar(255),
  "got" date,
  "count" integer,
  "sex" varchar(255),
  "age" integer,
  "healthHistory" varchar(255),
  "price" float,
  "notes" text,
  "project" integer,

  FOREIGN KEY ("project") REFERENCES "project" ("id"),
  FOREIGN KEY ("speciesID") REFERENCES "animalSpecies" ("id")
);

CREATE TABLE "animalSpecies" (
  "id" integer PRIMARY KEY,
  "order" varchar(255),
  "family" varchar(255),
  "subfamily" varchar(255),
  "genus" varchar(255),
  "species" varchar(255),
  "subspecies" varchar(255),
  "variety" varchar(255),
  "commonName" varchar(255),
  "origin" varchar(255),
  "food" varchar(255),
  "demands" text,
  "sozial" varchar(255),
  "reproduction" varchar(255),
  "size" float
);

CREATE TABLE "project" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "type" varchar(255),
  "maintenance" text,
  "build" varchar(255),
  "container" integer,
  "substrate" integer,
  "notes" varchar(255),

  FOREIGN KEY ("container") REFERENCES "container" ("id"),
  FOREIGN KEY ("substrate") REFERENCES "substrate" ("id")
);

CREATE TABLE "equipment" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "typeID" varchar(255),
  "power" varchar(255),
  "specifications" varchar(255),
  "maintinance" varchar(255),
  "price" float,
  "link" varchar(255),
  "picturePath" varchar(255),
  "notes" varchar(255),
  "project" integer,

  FOREIGN KEY ("project") REFERENCES "project" ("id"),
  FOREIGN KEY ("typeID") REFERENCES "equipmentType" ("id")
);

CREATE TABLE "equipmentType" (
  "id" integer PRIMARY KEY,
  "type" varchar(255)
);

CREATE TABLE "container" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "type" varchar(255),
  "length" float,
  "width" float,
  "hight" float
);

CREATE TABLE "substrate" (
  "id" integer PRIMARY KEY,
  "name" varchar(255),
  "content" text,
  "granularity" varchar(255),
  "waterRetention" varchar(255),
  "aeration" varchar(255),
  "desity" varchar(255),
  "pH" varchar(255),
  "nutrient" varchar(255),
  "lifetime" varchar(255),
  "usecase" varchar(255)
);

CREATE TABLE "plantPicture" (
  "id" integer PRIMARY KEY,
  "refID" integer,
  "caption" varchar(255),
  "isPrimary" bool,
  "path" varchar(255),

  FOREIGN KEY ("refID") REFERENCES "plant" ("id")
);

CREATE TABLE "animalPicture" (
  "id" integer PRIMARY KEY,
  "refID" integer,
  "caption" varchar(255),
  "isPrimary" bool,
  "path" varchar(255),

  FOREIGN KEY ("refID") REFERENCES "animal" ("id")
);

CREATE TABLE "projectPicture" (
  "id" integer PRIMARY KEY,
  "refID" integer,
  "caption" varchar(255),
  "isPrimary" bool,
  "path" varchar(255),

  FOREIGN KEY ("refID") REFERENCES "project" ("id")
);