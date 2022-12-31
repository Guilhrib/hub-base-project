CREATE TABLE "idea_comment" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "id_idea" uuid,
  "id_user" uuid
);

CREATE INDEX ON "idea_comment" ("id");

CREATE INDEX ON "idea_comment" ("id_idea");

ALTER TABLE "idea_comment" ADD FOREIGN KEY ("id_idea") REFERENCES "idea" ("id");

ALTER TABLE "idea_comment" ADD FOREIGN KEY ("id_user") REFERENCES "user" ("id");
