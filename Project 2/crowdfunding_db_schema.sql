-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
	"company_name" varchar(100) NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" real   NOT NULL,
    "pledged" real   NOT NULL,
    "outcome" varchar(100)   NOT NULL,
    "backers_counts" int   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "currency" varchar(100)   NOT NULL,
    "launch_date" varchar   NOT NULL,
    "end_date" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    "categoryID" varchar   NOT NULL,
    "subcategoryID" varchar   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "categoryID" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "categoryID"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategoryID" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategoryID"
     )
);

SELECT *
FROM campaign

SELECT *
FROM category

SELECT *
FROM contacts

SELECT *
FROM subcategory

ALTER TABLE "category" ADD CONSTRAINT "fk_category_categoryID" FOREIGN KEY("categoryID")
REFERENCES "campaign" ("categoryID");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategoryID" FOREIGN KEY("subcategoryID")
REFERENCES "campaign" ("subcategoryID");

