CREATE TYPE "process_type" AS ENUM (
  'automation',
  'system',
  'process'
);

CREATE TYPE "complexity_level_type" AS ENUM (
  'low',
  'medium',
  'high'
);

CREATE TYPE "idea_step" AS ENUM (
  'process_budget',
  'automation_info',
  'admin_review',
  'pending',
  'reject',
  'waiting',
  'archive',
  'release'
);

CREATE TABLE "idea" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "area" varchar NOT NULL,
  "sub_area" varchar NOT NULL,
  "status" idea_step NOT NULL,
  "process_type" process_type NOT NULL,
  "sub_process_type" varchar NOT NULL,
  "process" varchar NOT NULL,
  "validations" int NOT NULL DEFAULT 0,
  "complexity_level" complexity_level_type NOT NULL,
  "pages" int NOT NULL DEFAULT 0,
  "hours_per_day" double NOT NULL DEFAULT 0,
  "still_hours_per_day" double NOT NULL DEFAULT 0
);

CREATE INDEX ON "idea" ("id");