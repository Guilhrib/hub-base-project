CREATE TABLE "company_criterion" (
  "id" uuid PRIMARY KEY,
  "rating" int NOT NULL,
  "id_company" uuid,
  "id_criterion" uuid
);

CREATE INDEX ON "company_criterion" ("id");

CREATE INDEX ON "company_criterion" ("id_company");