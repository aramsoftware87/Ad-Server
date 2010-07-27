CREATE TABLE "placements" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "image" varchar(255), "url" varchar(255), "archive" boolean, "created_at" datetime, "updated_at" datetime, "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "session_id" varchar(255) NOT NULL, "data" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "password" varchar(255), "utype" varchar(255), "archive" boolean, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "websiteplacements" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rotation" integer, "embededcode" text, "status" varchar(255), "created_at" datetime, "updated_at" datetime, "placement_id" integer, "website_id" integer, "websites_id" integer, "placements_id" integer);
CREATE TABLE "websites" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "url" varchar(255), "archive" boolean, "created_at" datetime, "updated_at" datetime, "user_id" integer);
CREATE INDEX "index_sessions_on_session_id" ON "sessions" ("session_id");
CREATE INDEX "index_sessions_on_updated_at" ON "sessions" ("updated_at");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20100607231209');

INSERT INTO schema_migrations (version) VALUES ('20100607231246');

INSERT INTO schema_migrations (version) VALUES ('20100607231407');

INSERT INTO schema_migrations (version) VALUES ('20100607231456');

INSERT INTO schema_migrations (version) VALUES ('20100610195017');

INSERT INTO schema_migrations (version) VALUES ('20100615203530');

INSERT INTO schema_migrations (version) VALUES ('20100615203619');

INSERT INTO schema_migrations (version) VALUES ('20100615204712');

INSERT INTO schema_migrations (version) VALUES ('20100615204739');

INSERT INTO schema_migrations (version) VALUES ('20100615205049');

INSERT INTO schema_migrations (version) VALUES ('20100615205133');

INSERT INTO schema_migrations (version) VALUES ('20100618210123');

INSERT INTO schema_migrations (version) VALUES ('20100618210341');