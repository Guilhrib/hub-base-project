CREATE TABLE "idea_project_simulation" (
  "idea_id" uuid,
  "project_simulation_id_idea" uuid,
  PRIMARY KEY ("idea_id", "project_simulation_id_idea")
);

ALTER TABLE "idea_project_simulation" ADD FOREIGN KEY ("idea_id") REFERENCES "idea" ("id");

ALTER TABLE "idea_project_simulation" ADD FOREIGN KEY ("project_simulation_id_idea") REFERENCES "project_simulation" ("id_idea");
