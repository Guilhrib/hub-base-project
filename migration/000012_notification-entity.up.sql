CREATE TYPE "notification_type" AS ENUM (
  'step',
  'comment',
  'integration'
);

CREATE TABLE "notification" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "description" varchar NOT NULL,
  "disable" boolean NOT NULL DEFAULT false,
  "type" notification_type NOT NULL,
  "id_idea" uuid
);

CREATE INDEX ON "notification" ("id");

CREATE INDEX ON "notification" ("id_idea");

CREATE INDEX ON "notification" ("id_idea", "disable");

ALTER TABLE "notification" ADD FOREIGN KEY ("id_idea") REFERENCES "idea" ("id");
