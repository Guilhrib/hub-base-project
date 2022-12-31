CREATE TABLE "integration_tasks" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "date_init" timestamp NOT NULL,
  "date_end" timestamp NOT NULL,
  "description" varchar,
  "frequency" int NOT NULL,
  "process" varchar,
  "status" boolean NOT NULL,
  "supplier" varchar NOT NULL,
  "id_idea" uuid,
  "id_user" uuid
);

CREATE INDEX ON "integration_tasks" ("id_idea");