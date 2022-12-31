CREATE TABLE "idea_criterion" (
  "id" uuid PRIMARY KEY,
  "value" int NOT NULL,
  "id_criterion" uudi,
  "id_idea" uuid
);

CREATE INDEX ON "idea_criterion" ("id_idea");