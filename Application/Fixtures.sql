

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('ffaaa0e8-2fbb-404f-b677-4c5a31b3a84c', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-02-20 14:58:03.812301+08');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('8ebf91e5-d90c-4e1e-b921-d334ef7f889f', 'ffaaa0e8-2fbb-404f-b677-4c5a31b3a84c', 'foo', 'hello world');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('83bdb932-2b08-43e2-9644-6d5eb211c249', 'ffaaa0e8-2fbb-404f-b677-4c5a31b3a84c', 'foobar', 'baz');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


