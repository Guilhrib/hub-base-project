CREATE TABLE "user" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "avatar" text,
  "first_access" boolean NOT NULL DEFAULT true,
  "name" varchar NOT NULL,
  "password" varchar NOT NULL,
  "username" varchar UNIQUE NOT NULL,
  "x_api_token" uuid,
  "expire_token" uuid,
  "disable" boolean NOT NULL DEFAULT false,
  "id_profile" uuid
);

CREATE INDEX ON "user" ("id");

CREATE INDEX ON "user" ("id_profile");

CREATE INDEX ON "user" ("username");