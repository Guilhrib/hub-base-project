CREATE TABLE "profile" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "name" vachar NOT NULL,
  "editable" boolean NOT NULL DEFAULT false,
  "private" boolean NOT NULL DEFAULT true,
  "id_company" uuid,
  "id_job_position" uuid
);