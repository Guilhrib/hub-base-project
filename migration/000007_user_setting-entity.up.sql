CREATE TABLE "user_setting" (
  "id" uuid PRIMARY KEY,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "updated_at" timestamp NOT NULL DEFAULT (now()),
  "notify_approve_step" boolean NOT NULL DEFAULT true,
  "notify_archive_step" boolean NOT NULL DEFAULT true,
  "notify_reject_step" boolean NOT NULL DEFAULT true,
  "notify_release_step" boolean NOT NULL DEFAULT true,
  "notify_manager_rate_step" boolean NOT NULL DEFAULT true,
  "notify_idea_comment" boolean NOT NULL DEFAULT true,
  "notify_integration_exec_fail" boolean NOT NULL DEFAULT true,
  "notify_integration_exec_success" boolean NOT NULL DEFAULT true,
  "id_user" uuid
);

CREATE INDEX ON "user_setting" ("id_user");