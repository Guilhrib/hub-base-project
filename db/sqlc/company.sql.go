// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.15.0
// source: company.sql

package db

import (
	"context"
)

const createCompany = `-- name: CreateCompany :one
INSERT INTO company (
  "name", "status"
) VALUES (
  $1, $2
) RETURNING id, created_at, updated_at, logo, name, accept_term, status
`

type CreateCompanyParams struct {
	Name   string        `json:"name"`
	Status CompanyStatus `json:"status"`
}

func (q *Queries) CreateCompany(ctx context.Context, arg CreateCompanyParams) (Company, error) {
	row := q.db.QueryRowContext(ctx, createCompany, arg.Name, arg.Status)
	var i Company
	err := row.Scan(
		&i.ID,
		&i.CreatedAt,
		&i.UpdatedAt,
		&i.Logo,
		&i.Name,
		&i.AcceptTerm,
		&i.Status,
	)
	return i, err
}
