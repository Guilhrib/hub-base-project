CREATE TABLE "profile_permission" (
  "profile_id" uuid,
  "permission_id_profile" uuid,
  PRIMARY KEY ("profile_id", "permission_id_profile")
);

ALTER TABLE "profile_permission" ADD FOREIGN KEY ("profile_id") REFERENCES "profile" ("id");

ALTER TABLE "profile_permission" ADD FOREIGN KEY ("permission_id_profile") REFERENCES "permission" ("id_profile");