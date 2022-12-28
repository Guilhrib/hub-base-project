CREATE TYPE "company_status" AS ENUM (
  'active',
  'disable',
  'trial'
);

CREATE TABLE IF NOT EXISTS "company" (
  "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  "created_at" datetime NOT NULL DEFAULT (now()),
  "updated_at" datetime NOT NULL DEFAULT (now()),
  "logo" longblob,
  "name" varchar(255) NOT NULL,
  "accept_term" boolean NOT NULL DEFAULT false,
  "status" company_status NOT NULL
);