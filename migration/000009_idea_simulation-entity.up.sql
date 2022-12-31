CREATE TABLE "idea_simulation" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "selected" boolean NOT NULL DEFAULT false,
  "id_idea" uuid,
  "id_supplier" uuid,
  "id_idea_metrics" uuid
);

CREATE INDEX ON "idea_simulation" ("id_idea");

CREATE INDEX ON "idea_simulation" ("selected");

CREATE INDEX ON "idea_simulation" ("id_idea", "selected");

ALTER TABLE "idea_simulation" ADD FOREIGN KEY ("id_idea") REFERENCES "idea" ("id");

ALTER TABLE "idea_simulation" ADD FOREIGN KEY ("id_supplier") REFERENCES "supplier" ("id");

ALTER TABLE "idea_simulation" ADD FOREIGN KEY ("id_idea_metrics") REFERENCES "idea_metric" ("id");

ALTER TABLE "idea_simulation" ADD FOREIGN KEY ("id") REFERENCES "idea_comment" ("id_user");