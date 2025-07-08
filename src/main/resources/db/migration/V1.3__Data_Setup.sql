INSERT INTO app_auth.roles (name, description) VALUES
    ('ADM', 'Admin'),
    ('USR', 'User'),
    ('PUB', 'Public');

INSERT INTO app_auth.urls (path) VALUES
    ('/static/admin/**'),
    ('/static/user/**'),
    ('/static/**');

INSERT INTO app_auth.user_status (status) VALUES
    ('Enabled'),
    ('Disabled'),
    ('Locked'),
    ('Closed');

INSERT INTO app_auth.users (first_name, last_name, login_name, email, status_id, password) VALUES
     -- admin/admin
    ('Admin', '', 'admin', 'admin@no.mail', 1, '$2a$10$UuBNnY11mAhovTcNiU59I.Is8ujSwDPBesBHCDrnu2pncl9wtuPTO'),
     -- user/user
    ('User', '', 'user', 'user@no.mail', 1, '$2a$10$IVLgUq/Z2/doKa8e/RmrPOhK7j49Rddqc1GANmNeWV4BMKHxK9sRK'),
     -- public
    ('Public', '', 'public', 'public@no.mail', 3, '');
