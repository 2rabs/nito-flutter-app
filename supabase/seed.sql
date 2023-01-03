--
-- 認証ユーザー
--
insert into "auth"."users" (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, confirmed_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at)
values  ('00000000-0000-0000-0000-000000000000', 'f97de07e-1e20-48ca-a21c-c7a6701dc827', 'authenticated', 'authenticated', 'develop@r09i.me', '$2a$10$Me3wgS37.qdS8Pa7qPzCf.UIsCK/P8Kxk/qxqGoZQFRQ97EzdU0v2', '2022-07-16 11:29:09.939740 +00:00', null, '', '2022-07-16 11:28:27.775532 +00:00', '', null, '', '', null, '2023-01-03 05:50:11.426244 +00:00', '{"provider": "email", "providers": ["email"]}', '{}', false, '2022-07-16 11:28:27.770573 +00:00', '2023-01-03 05:50:11.428515 +00:00', null, null, '', '', null, DEFAULT, '', 0, null, '', null),
        ('00000000-0000-0000-0000-000000000000', '2ebd2e36-6e6d-4524-8e78-f1cfb6ef7e41', 'authenticated', 'authenticated', 'fremie.off@gmail.com', '$2a$10$nsa6Ki4JqkGmqF.oHG1gj.KwhWnXxiR5jG3kwwI9bevc77JE2xwCC', '2022-11-04 14:18:09.401261 +00:00', null, '', '2022-11-04 14:17:44.314219 +00:00', '', null, '', '', null, '2022-11-30 11:39:27.408360 +00:00', '{"provider": "email", "providers": ["email"]}', '{}', null, '2022-11-04 14:17:44.289535 +00:00', '2022-12-06 11:35:04.941364 +00:00', null, null, '', '', null, DEFAULT, '', 0, null, '', null);

--
-- メンバー
--
insert into "public"."members" (id, created_at, updated_at, deleted_at, uuid, line_id, nickname, role)
values (49, '2022-07-27 03:37:32.505650 +00:00', '2022-07-27 03:37:32.505650 +00:00', null,
        'f97de07e-1e20-48ca-a21c-c7a6701dc827', 'U1cec09a5d375e95671d7025d61c6fa7b', 'Kino', 'admin'),
       (52, '2022-11-04 14:18:47.000000 +00:00', '2022-11-04 14:18:47.000000 +00:00', null,
        '2ebd2e36-6e6d-4524-8e78-f1cfb6ef7e41', 'Ue201dfe618c44a22b1c147b6e9bbc827', ':Daichi', 'admin');

--
-- メッセージ
--
insert into "public"."messages" (id, created_at, updated_at, deleted_at, message, member_id)
values  (10, '2022-07-23 02:12:12.536124 +00:00', '2022-07-23 02:12:12.536124 +00:00', null, 'も', null),
        (11, '2022-07-23 02:13:21.456075 +00:00', '2022-07-23 02:13:21.456075 +00:00', null, 'とも', null),
        (19, '2022-07-23 02:33:43.829277 +00:00', '2022-07-23 02:33:43.829277 +00:00', null, 'の', null);

--
-- スケジュール
--
insert into "public"."schedules" (id, created_at, updated_at, deleted_at, date)
values  (1, '2022-06-13 23:40:21.000000 +00:00', '2022-06-13 23:40:21.000000 +00:00', null, '2022-06-18'),
        (2, '2022-06-14 01:33:22.000000 +00:00', '2022-06-14 01:33:22.000000 +00:00', null, '2022-06-25'),
        (3, '2022-06-19 11:35:28.000000 +00:00', '2022-06-19 11:35:28.000000 +00:00', null, '2022-07-02'),
        (4, '2022-07-05 14:08:07.000000 +00:00', '2022-07-05 14:08:07.000000 +00:00', null, '2022-07-17'),
        (6, '2022-07-22 10:16:27.000000 +00:00', '2022-07-22 10:16:27.000000 +00:00', null, '2022-07-30'),
        (5, '2022-07-05 14:08:29.000000 +00:00', '2022-07-05 14:08:29.000000 +00:00', '2022-07-22 10:16:43.000000 +00:00', '2022-07-24'),
        (7, '2022-08-04 01:14:32.000000 +00:00', '2022-08-04 01:14:32.000000 +00:00', null, '2022-08-06'),
        (8, '2022-08-04 01:14:58.000000 +00:00', '2022-08-04 01:14:58.000000 +00:00', null, '2022-08-11'),
        (9, '2022-08-16 04:48:59.000000 +00:00', '2022-08-16 04:48:59.000000 +00:00', null, '2022-08-20'),
        (10, '2022-08-22 04:05:38.000000 +00:00', '2022-08-22 04:05:38.000000 +00:00', null, '2022-09-10'),
        (19, '2022-09-13 12:06:08.000000 +00:00', '2022-09-13 12:06:08.000000 +00:00', null, '2022-09-17'),
        (21, '2022-09-18 01:58:31.000000 +00:00', '2022-09-18 01:58:31.000000 +00:00', null, '2022-10-01'),
        (22, '2022-10-02 12:49:41.000000 +00:00', '2022-10-02 12:49:41.000000 +00:00', '2022-10-06 00:19:37.000000 +00:00', '2022-10-08'),
        (23, '2022-10-13 00:05:37.266557 +00:00', '2022-10-13 00:05:37.266557 +00:00', null, '2022-10-15'),
        (24, '2022-10-20 05:24:47.347871 +00:00', '2022-10-20 05:24:47.347871 +00:00', null, '2022-10-22'),
        (25, '2022-10-25 22:52:07.950669 +00:00', '2022-10-25 22:52:07.950669 +00:00', null, '2022-10-29'),
        (26, '2022-11-04 11:13:54.311872 +00:00', '2022-11-04 11:13:54.311872 +00:00', null, '2022-11-05'),
        (27, '2022-11-14 04:24:05.496640 +00:00', '2022-11-14 04:24:05.496640 +00:00', null, '2022-11-20'),
        (28, '2022-11-15 04:39:20.624608 +00:00', '2022-11-15 04:39:20.624608 +00:00', null, '2022-11-23'),
        (29, '2022-11-24 07:06:16.737820 +00:00', '2022-11-24 07:06:16.737820 +00:00', null, '2022-11-26'),
        (30, '2022-11-30 11:39:13.483190 +00:00', '2022-11-30 11:39:13.483190 +00:00', null, '2022-12-04'),
        (31, '2022-12-06 03:57:34.795560 +00:00', '2022-12-06 03:57:34.795560 +00:00', null, '2022-12-11'),
        (32, '2022-12-13 04:06:29.921298 +00:00', '2022-12-13 04:06:29.921298 +00:00', null, '2022-12-17'),
        (33, '2022-12-19 01:23:09.762796 +00:00', '2022-12-19 01:23:09.762796 +00:00', null, '2022-12-24'),
        (34, '2022-12-24 09:53:48.146440 +00:00', '2022-12-24 09:53:48.146440 +00:00', null, '2023-01-02'),
        (35, '2022-12-28 23:57:36.733298 +00:00', '2022-12-28 23:57:36.733298 +00:00', null, '2023-01-07');

--
-- 出席管理
--
insert into "public"."participation" (id, created_at, updated_at, deleted_at, schedule_id, member_id, comment)
values  (21, '2022-06-26 13:24:03.400379 +00:00', '2022-06-26 13:24:03.400379 +00:00', null, 3, 49, null),
        (49, '2022-07-29 09:38:48.216712 +00:00', '2022-07-29 09:38:48.216712 +00:00', null, 6, 52, ''),
        (53, '2022-09-13 12:16:49.928342 +00:00', '2022-09-13 12:16:49.928342 +00:00', null, 19, 49, ''),
        (54, '2022-09-18 11:18:09.270354 +00:00', '2022-09-18 11:18:09.270354 +00:00', null, 21, 52, ''),
        (55, '2022-09-18 12:13:14.021580 +00:00', '2022-09-18 12:13:14.021580 +00:00', null, 21, 49, ''),
        (56, '2022-10-02 12:50:47.197973 +00:00', '2022-10-02 12:50:47.197973 +00:00', null, 22, 49, ''),
        (57, '2022-10-13 00:06:21.023437 +00:00', '2022-10-13 00:06:21.023437 +00:00', null, 23, 49, ''),
        (58, '2022-10-20 05:34:43.004599 +00:00', '2022-10-20 05:34:43.004599 +00:00', null, 24, 49, ''),
        (59, '2022-10-25 23:03:49.672441 +00:00', '2022-10-25 23:03:49.672441 +00:00', null, 25, 49, ''),
        (60, '2022-11-14 04:28:34.295358 +00:00', '2022-11-14 04:28:34.295358 +00:00', null, 27, 52, ''),
        (61, '2022-11-30 11:40:37.954494 +00:00', '2022-11-30 11:40:37.954494 +00:00', null, 30, 49, '');