CREATE TABLE "metrics" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "cost" double NOT NULL DEFAULT 0,
  "economy" double NOT NULL DEFAULT 0,
  "payback" double NOT NULL DEFAULT 0,
  "recommended" int NOT NULL DEFAULT 0,
  "roi" double NOT NULL DEFAULT 0,
  "score" double NOT NULL DEFAULT 0,
  "id_company" uuid
);

CREATE INDEX ON "metrics" ("id_company");