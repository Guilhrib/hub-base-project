// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.15.0

package db

import (
	"database/sql/driver"
	"fmt"

	"github.com/google/uuid"
)

type CompanyStatus string

const (
	CompanyStatusActive  CompanyStatus = "active"
	CompanyStatusDisable CompanyStatus = "disable"
	CompanyStatusTrial   CompanyStatus = "trial"
)

func (e *CompanyStatus) Scan(src interface{}) error {
	switch s := src.(type) {
	case []byte:
		*e = CompanyStatus(s)
	case string:
		*e = CompanyStatus(s)
	default:
		return fmt.Errorf("unsupported scan type for CompanyStatus: %T", src)
	}
	return nil
}

type NullCompanyStatus struct {
	CompanyStatus CompanyStatus
	Valid         bool // Valid is true if String is not NULL
}

// Scan implements the Scanner interface.
func (ns *NullCompanyStatus) Scan(value interface{}) error {
	if value == nil {
		ns.CompanyStatus, ns.Valid = "", false
		return nil
	}
	ns.Valid = true
	return ns.CompanyStatus.Scan(value)
}

// Value implements the driver Valuer interface.
func (ns NullCompanyStatus) Value() (driver.Value, error) {
	if !ns.Valid {
		return nil, nil
	}
	return ns.CompanyStatus, nil
}

type Company struct {
	ID         uuid.UUID     `json:"id"`
	CreatedAt  interface{}   `json:"created_at"`
	UpdatedAt  interface{}   `json:"updated_at"`
	Logo       interface{}   `json:"logo"`
	Name       string        `json:"name"`
	AcceptTerm bool          `json:"accept_term"`
	Status     CompanyStatus `json:"status"`
}
