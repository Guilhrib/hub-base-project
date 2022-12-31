CREATE TABLE "profile_permission" (
  "profile_id" uuid,
  "permission_id_profile" uuid,
  PRIMARY KEY ("profile_id", "permission_id_profile")
);