CREATE TYPE "process_type" AS ENUM (
  'automation',
  'system',
  'process'
);

CREATE TABLE "supplier" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "name" varchar NOT NULL,
  "hour_value" double NOT NULL DEFAULT 0,
  "type" process_type NOT NULL,
  "standard" boolean NOT NULL DEFAULT false,
  "id_company" uuid
);

CREATE INDEX ON "supplier" ("id");

CREATE INDEX ON "supplier" ("id_company");

CREATE INDEX ON "supplier" ("id_company", "standard");