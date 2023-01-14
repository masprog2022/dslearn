INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOimm-rZvfwCFQAAAAAdAAAAABAE', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ASwitch-course-book-grey.svg&psig=AOvVaw3Y234mxvnxGIlFwEPaapAn&ust=1673464162596000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIDs_vjZvfwCFQAAAAAdAAAAABAF' );

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste Capítulo vamos começar', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste Capítulo vamos continuar', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste Capítulo vamos finalizar', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw1ZPRBM8mFJf71MGFyOshky&ust=1673463705158000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOjVjs3nvfwCFQAAAAAdAAAAABAD', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);

INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula do 2 capítulo 1', 2, 1);

INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);

INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approvalcount, weight, due_Date) VALUES (4, 'Fazer tabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T03:00:00');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

