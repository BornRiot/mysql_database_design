CREATE TABLE  product_categories( pc_id int(11) PRIMARY KEY ,
  name VARCHAR(100) NOT NULL,
  pc_description TEXT NOT NULL,
  pc_image VARCHAR(100) NOT NULL

);
CREATE TABLE products( product_id NUMERIC(11) NOT NULL, product_name VARCHAR(255) NOT NULL,
  products_description TEXT NOT NULL,
  product_price VARCHAR(255) NOT NULL,
  pc_id int(11) NOT NULL,
  image VARCHAR(100),
  CONSTRAINT foreign_key
  FOREIGN KEY (pc_id) references product_categories(pc_id) on update cascade on delete restrict
);


