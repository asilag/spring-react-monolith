CREATE TABLE app_auth.urls (
    url_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    path VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE app_auth.roles (
    role_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(8) UNIQUE NOT NULL,
    description VARCHAR(64) UNIQUE NOT NULL
);

CREATE TABLE app_auth.x_role_url (
    xru_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    role_id INT NOT NULL,
    url_id INT NOT NULL,
    status BOOLEAN,
    CONSTRAINT fk_xru_role
        FOREIGN KEY (role_id)
        REFERENCES app_auth.roles (role_id),
    CONSTRAINT fk_xru_url
        FOREIGN KEY (url_id)
        REFERENCES app_auth.urls (url_id)
);

CREATE TABLE app_auth.user_status (
    us_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    status VARCHAR(32) UNIQUE NOT NULL
);

CREATE TABLE app_auth.modules (
    module_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(64) UNIQUE NOT NULL,
    description VARCHAR(256) NOT NULL
);

CREATE TABLE app_auth.users (
    user_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    login_name VARCHAR(64) UNIQUE NOT NULL,
    email VARCHAR(128) UNIQUE,
    status_id INT NOT NULL,
    password VARCHAR(256),
    CONSTRAINT fk_u_us_id
        FOREIGN KEY (status_id)
        REFERENCES app_auth.user_status (us_id)
);

CREATE TABLE app_auth.x_user_role (
    xur_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    status BOOLEAN,
    CONSTRAINT fk_xur_user
        FOREIGN KEY (user_id)
        REFERENCES app_auth.users (user_id),
    CONSTRAINT fk_xur_role
        FOREIGN KEY (role_id)
        REFERENCES app_auth.roles (role_id)
);

CREATE TABLE app_auth.x_role_module (
    xrm_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    role_id INT NOT NULL,
    module_id INT NOT NULL,
    status BOOLEAN,
    CONSTRAINT fk_xrm_role
        FOREIGN KEY (role_id)
        REFERENCES app_auth.roles (role_id),
    CONSTRAINT fk_xrm_module
        FOREIGN KEY (module_id)
        REFERENCES app_auth.modules (module_id)
);