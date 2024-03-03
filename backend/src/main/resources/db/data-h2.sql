INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
    VALUES ('John', 'Doe', 'test@example.com', 'New York', '$2a$10$5OPwzIZ2N8CIeWUA2q9t0OzoI1kB7cvf1qDGwyxeiBFEAR3h2Psmu', ARRAY['https://i.pravatar.cc/300?u=5'], 'banner.jpg',
        'A short bio about John Doe', 'NOT_SPECIFIED    ', FALSE, CURRENT_TIMESTAMP,
        '1990-01-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');
INSERT INTO public.roles (user_id,name) VALUES ( 1, 'ROLE_USER' );

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)

VALUES ('Alice', 'Johnson', 'test2@example.com', 'Los Angeles', '$2a$10$5OPwzIZ2N8CIeWUA2q9t0OzoI1kB7cvf1qDGwyxeiBFEAR3h2Psmu', ARRAY['https://i.pravatar.cc/300?u=533',
        'avatar4.jpg'], 'banner2.jpg',
        'Bio for Alice Johnson', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1985-03-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.roles (user_id,name) VALUES ( 2, 'ROLE_USER' );


INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)

VALUES ('Bob', 'Smith', 'bob.smith@example.com', 'Chicago', 'mypassword', ARRAY['https://i.pravatar.cc/300?u=307',
        'avatar6.jpg'], 'banner3.jpg',
        'Bob Smith bio', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1992-07-08', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.roles (user_id,name) VALUES ( 3, 'ROLE_USER' );

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Eva', 'Martinez', 'eva.martinez@example.com', 'San Francisco', 'securepass123',
        ARRAY['https://i.pravatar.cc/300?u=28', 'avatar8.jpg'], 'banner4.jpg',
        'Evas bio description', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1988-12-01', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.roles (user_id,name) VALUES ( 4, 'ROLE_USER' );

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)

VALUES ('Michael', 'Williams', 'michael.williams@example.com', 'Miami', 'password123', ARRAY['avatar9.jpg',
        'avatar10.jpg'], 'banner5.jpg',
        'Michaels bio', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1975-06-25', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.roles (user_id,name) VALUES ( 5, 'ROLE_USER' );


INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Sophia', 'Lee', 'sophia.lee@example.com', 'Seattle', 'strongpassword456', ARRAY['avatar11.jpg',
        'avatar12.jpg'], 'banner6.jpg',
        'Sophias bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1995-09-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');
INSERT INTO public.roles (user_id,name) VALUES ( 6, 'ROLE_USER' );

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('S', 'Lee', 'sophia.lee@example.com', 'Seattle', 'strongpassword456', ARRAY['avatar11.jpg',
        'avatar12.jpg'], 'banner6.jpg',
        'Sophias bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1995-09-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');
INSERT INTO public.roles (user_id,name) VALUES ( 7, 'ROLE_USER' );

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('John', 'Doe', 'john.doe@example.com', 'New York', 'strongpassword123', ARRAY['avatar1.jpg', 'avatar2.jpg'], 'banner1.jpg',
        'Johns bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1985-01-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Emily', 'Smith', 'emily.smith@example.com', 'Los Angeles', 'password789', ARRAY['avatar3.jpg', 'avatar4.jpg'], 'banner2.jpg',
        'Emilys bio information', 'FEMALE', FALSE, CURRENT_TIMESTAMP,
        '1990-05-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Michael', 'Johnson', 'michael.johnson@example.com', 'Chicago', 'mypassword321', ARRAY['avatar5.jpg', 'avatar6.jpg'], 'banner3.jpg',
        'Michaels bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1988-03-12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Anna', 'Williams', 'anna.williams@example.com', 'Houston', 'annaspassword', ARRAY['avatar7.jpg', 'avatar8.jpg'], 'banner4.jpg',
        'Annas bio information', 'FEMALE', FALSE, CURRENT_TIMESTAMP,
        '1992-07-25', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('David', 'Brown', 'david.brown@example.com', 'Phoenix', 'davidssecurepassword', ARRAY['avatar9.jpg', 'avatar10.jpg'], 'banner5.jpg',
        'Davids bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1986-11-30', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Emma', 'Jones', 'emma.jones@example.com', 'Philadelphia', 'emmaspassword', ARRAY['avatar13.jpg', 'avatar14.jpg'], 'banner7.jpg',
        'Emmas bio information', 'FEMALE', FALSE, CURRENT_TIMESTAMP,
        '1993-08-18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('James', 'Wilson', 'james.wilson@example.com', 'San Diego', 'jamespassword', ARRAY['avatar15.jpg', 'avatar16.jpg'], 'banner8.jpg',
        'James bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1989-02-22', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Olivia', 'Martinez', 'olivia.martinez@example.com', 'San Antonio', 'oliviaspassword', ARRAY['avatar17.jpg', 'avatar18.jpg'], 'banner9.jpg',
        'Olivias bio information', 'FEMALE', FALSE, CURRENT_TIMESTAMP,
        '1994-10-05', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Christopher', 'Garcia', 'christopher.garcia@example.com', 'Dallas', 'chrispassword', ARRAY['avatar19.jpg', 'avatar20.jpg'], 'banner10.jpg',
        'Christophers bio information', 'MALE', FALSE, CURRENT_TIMESTAMP,
        '1987-04-17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio, gender,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active,
                          is_premium, premium_nickname, premium_emoji, activity_status)
VALUES ('Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', 'Austin', 'isabellaspassword', ARRAY['avatar21.jpg', 'avatar22.jpg'], 'banner11.jpg',
        'Isabellas bio information', 'FEMALE', FALSE, CURRENT_TIMESTAMP,
        '1991-06-29', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true, false, null , null , 'OFFLINE');

INSERT INTO public.roles (user_id, name) VALUES (8, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (9, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (10, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (11, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (12, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (13, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (14, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (15, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (16, 'ROLE_USER');
INSERT INTO public.roles (user_id, name) VALUES (17, 'ROLE_USER');

INSERT INTO public.comments (commenter_id, post_id, text, creation_date, last_modified_date, is_active)
VALUES (1, 1, '11111111', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

INSERT INTO public.comments (commenter_id, post_id, text, creation_date, last_modified_date, is_active)
VALUES (2, 2, '2222222222', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, false);

INSERT INTO public.comments (commenter_id, post_id, text, creation_date, last_modified_date, is_active)
VALUES (3, 3, '3333333333', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

INSERT INTO public.comments (commenter_id, post_id, text, creation_date, last_modified_date, is_active)
VALUES (4, 4, '44444444', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, false);

INSERT INTO public.comments (commenter_id, post_id, text, creation_date, last_modified_date, is_active)
VALUES (5, 5, '55555555', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);


INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (4, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (5, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (7, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (8, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (9, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (10, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (11, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (12, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (13, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (14, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (15, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (16, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (17, 1, 'FRIEND', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (3, 1, 'REQUEST_SENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (1, 5, 'REQUEST_SENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);
INSERT INTO public.friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (6, 1, 'REQUEST_SENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE);

