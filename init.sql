CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE users (
	"id" serial NOT NULL,
	"email" varchar(30) NOT NULL UNIQUE,
	"password" varchar(100) NOT NULL,
	"is_admin" bool NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE points (
	"id" serial NOT NULL,
	"name" varchar(150) NOT NULL,
	"geom" geometry NOT NULL,
	CONSTRAINT "points_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE polygons (
	"id" serial NOT NULL,
	"name" varchar(200) NOT NULL,
	"geom" geometry NOT NULL,
	CONSTRAINT "polygons_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

INSERT INTO users (email, password, is_admin) VALUES ('admin@admin.com', '123456', true);
INSERT INTO points (name, geom) VALUES ('Praça da Sé', ST_GeomFromGeoJSON('{"coordinates":[-46.63337289132019,-23.550281923367024],"type": "Point"}'));
INSERT INTO polygons (name, geom)
VALUES ('Praça da Sé', ST_GeomFromGeoJSON('
		{"coordinates": [
			[
            [
              -46.63423697095729,
              -23.550508702328443
            ],
            [
              -46.63376021825792,
              -23.550743213057146
            ],
            [
              -46.63388812751859,
              -23.551137616520364
            ],
            [
              -46.63263229113849,
              -23.551691911279747
            ],
            [
              -46.631946232375185,
              -23.550370127609952
            ],
            [
              -46.63208576974995,
              -23.5499544025798
            ],
            [
              -46.63280671285739,
              -23.55016759506779
            ],
            [
              -46.6333416061309,
              -23.549922423676577
            ],
            [
              -46.63326020932854,
              -23.549528016567436
            ],
            [
              -46.63364393711137,
              -23.5491762470661
            ],
            [
              -46.63423697095729,
              -23.550508702328443
            ]
          ]
        ],
        "type": "Polygon"
      }'));
