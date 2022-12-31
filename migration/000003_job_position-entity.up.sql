CREATE TABLE "job_position" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "title" varchar(100) NOT NULL,
  "hour_value" double NOT NULL DEFAULT 0,
  "id_company" uuid
);

CREATE INDEX ON "job_position" ("id");

CREATE INDEX ON "job_position" ("id_company");

ALTER TABLE "job_position" ADD FOREIGN KEY ("id_company") REFERENCES "company" ("id");