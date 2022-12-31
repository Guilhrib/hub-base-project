CREATE TABLE "permission" (
  "id" uuid PRIMARY KEY,
  "created_at" datetime NOT NULL DEFAULT (now()),
  "updated_at" datetime NOT NULL DEFAULT (now()),
  "action" varchar NOT NULL,
  "resource" varchar NOT NULL,
  "private" boolean NOT NULL DEFAULT false,
  "id_profile" uuid
);

CREATE INDEX ON "permission" ("id_profile");