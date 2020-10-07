DROP TABLE "public"."Post";
DROP TABLE "public"."Profile";
DROP TABLE "public"."User";
CREATE TABLE "public"."User"(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(255),
email VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE "public"."Post"(
id SERIAL PRIMARY KEY NOT NULL,
title VARCHAR(255) NOT NULL,
"createdAt" TIMESTAMP NOT NULL DEFAULT now(),
content TEXT,
published BOOLEAN NOT NULL,
name VARCHAR(255),
email VARCHAR(255) UNIQUE NOT NULL,
"authorId" Integer Not NULL,
FOREIGN KEY ("authorId") REFERENCES "public"."User"(id)
);


create table "public"."Profile" (
id SERIAL PRIMARY KEY NOT NULL,
bio TEXT,
userId INTEGER UNIQUE NOT NULL,
FOREIGN KEY (userId) REFERENCES "public"."User"(id)
);

