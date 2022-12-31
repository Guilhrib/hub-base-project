CREATE TABLE "project_simulation" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "name" varchar NOT NULL,
  "favorite" boolean NOT NULL DEFAULT false,
  "hours_per_year" double,
  "cost" double NOT NULL DEFAULT 0,
  "economy" double NOT NULL DEFAULT 0,
  "payback" double NOT NULL DEFAULT 0,
  "roi" payback NOT NULL DEFAULT 0,
  "id_idea" uuid,
  "id_company" uuid
);

CREATE INDEX ON "project_simulation" ("id");

CREATE INDEX ON "project_simulation" ("id_company");

ALTER TABLE "project_simulation" ADD FOREIGN KEY ("id_company") REFERENCES "company" ("id");
