postgresimage:
	docker pull postgres:15.1-alpine
postgresdocker:
	docker run --name postgres15 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=shalom2008 -d postgres:15.1alpine
createdb:
	docker exec -it postgres15 createdb --username=root --owner=root hub-dev
dropdb:
	docker exec -it postgres15 dropdb hub-dev
migrateup:
	migrate -path db/migration -database "postgresql://root:shalom2008@localhost:5432/hub-dev?sslmode=disable" -verbose up
migratedown:
	migrate -path db/migration -database "postgresql://root:shalom2008@localhost:5432/hub-dev?sslmode=disable" -verbose down
sqlc:
	sqlc generate

.PHONY: postgresimage postgresdocker createdb dropdb migrateup migratedown sqlc