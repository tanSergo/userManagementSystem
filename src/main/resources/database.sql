-- Table: address
CREATE TABLE address (
  ad_id     INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zip       VARCHAR(255) NOT NULL,
  country   VARCHAR(255) NOT NULL,
  city      VARCHAR(255) NOT NULL,
  district  VARCHAR(255) NOT NULL,
  street    VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

-- Table: users
CREATE TABLE users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  email    VARCHAR(255) NOT NULL,
  birthday VARCHAR(255) NOT NULL,
  created_date VARCHAR(255) NOT NULL,
  updated_date VARCHAR(255) NOT NULL,
--  fk_ad_id INT          NOT NULL,
  is_active VARCHAR(10)
--  FOREIGN KEY (fk_ad_id) REFERENCES address(ad_id)
)
  ENGINE = InnoDB;

-- Table: roles
CREATE TABLE roles (
  id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),

  UNIQUE (user_id, role_id)
)
  ENGINE = InnoDB;

-- Insert data

INSERT INTO users VALUES (1, 'admin', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG', 'Ivan',
                          'Bezdomniy', 'zdorov@asylum.su', '25.08.1910', '2013-12-31 13:50:00', '2013-12-31 13:50:00','TRUE');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);

INSERT INTO address VALUES (1, 'myzip', 'USSR', 'Moscow','Central', 'Patryarschiye prudy');