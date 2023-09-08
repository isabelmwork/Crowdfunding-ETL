DROP TABLE campaign;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;

CREATE TABLE contacts(
	contact_id INT,
	first_name VARCHAR(15),
	last_name VARCHAR(30),
	email VARCHAR(50),
	PRIMARY KEY(contact_id)
);

CREATE TABLE category(
	category_id VARCHAR(10),
	category VARCHAR(15),
	PRIMARY KEY(category_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10),
	subcategory VARCHAR(50),
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE campaign(
	cf_id INT,
    contact_id INT,
    company_name VARCHAR(100),
    description TEXT,
    goal NUMERIC(10,2),
    pledged NUMERIC(10,2),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(10),
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
	PRIMARY KEY (cf_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
