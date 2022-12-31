CREATE TABLE "criterion" (
  "id" uuid PRIMARY KEY,
  "attribute" varchar NOT NULL,
  "hint" varchar NOT NULL,
  "question" varchar NOT NULL
);

CREATE INDEX ON "criterion" ("id");