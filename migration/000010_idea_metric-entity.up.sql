CREATE TYPE "complexity_level_type" AS ENUM (
  'low',
  'medium',
  'high'
);

CREATE TABLE "idea_metric" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "complexity" complexity_level_type NOT NULL DEFAULT 0,
  "hours_per_year" double NOT NULL DEFAULT 0,
  "budgeted_hours" double NOT NULL DEFAULT 0,
  "cost" double NOT NULL DEFAULT 0,
  "economy" double NOT NULL DEFAULT 0,
  "payback" double NOT NULL DEFAULT 0,
  "roi" double NOT NULL DEFAULT 0,
  "recommended" int NOT NULL DEFAULT 0,
  "real_cost" double NOT NULL DEFAULT 0,
  "real_roi" double NOT NULL DEFAULT 0
);

CREATE INDEX ON "idea_metric" ("id");