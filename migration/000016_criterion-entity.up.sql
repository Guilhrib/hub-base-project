CREATE TABLE "criterion" (
  "id" uuid PRIMARY KEY,
  "attribute" varchar NOT NULL,
  "hint" varchar NOT NULL,
  "question" varchar NOT NULL
);

CREATE INDEX ON "criterion" ("id");

ALTER TABLE "company_criterion" ADD FOREIGN KEY ("id_company") REFERENCES "company" ("id");

ALTER TABLE "company_criterion" ADD FOREIGN KEY ("id_criterion") REFERENCES "criterion" ("id");
