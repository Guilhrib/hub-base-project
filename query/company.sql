-- name: CreateCompany :one
INSERT INTO company (
  "name", "status"
) VALUES (
  $1, $2
) RETURNING *;