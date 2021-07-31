-- public.acknowledgements definition

-- Drop table

-- DROP TABLE public.acknowledgements;

CREATE TABLE public.acknowledgements (
	id int4 NOT NULL DEFAULT nextval('acknowledgements_sequence'::regclass),
	acknowledgement_id varchar(30) NOT NULL,
	acknowledgement_attributes json NULL,
	acknowledgement_type varchar(30) NOT NULL,
	acknowledgement_object varchar(30) NOT NULL,
	profile_id varchar(30) NOT NULL,
	app_id varchar(30) NOT NULL,
	event_id varchar(30) NOT NULL,
	process_id varchar(30) NOT NULL,
	time_started timestamptz NOT NULL DEFAULT now(),
	time_updated timestamptz NOT NULL DEFAULT now(),
	time_finished timestamptz NOT NULL DEFAULT now(),
	active int4 NOT NULL DEFAULT 1,
	CONSTRAINT acknowledgements_acknowledgement_id_key UNIQUE (acknowledgement_id)
);

-- Permissions

ALTER TABLE public.acknowledgements OWNER TO jmnmpyceddqxma;
GRANT ALL ON TABLE public.acknowledgements TO jmnmpyceddqxma;


-- public."comments" definition

-- Drop table

-- DROP TABLE public."comments";

CREATE TABLE public."comments" (
	id serial NOT NULL,
	comment_id varchar(30) NOT NULL,
	comment_attributes json NULL,
	comment_text text NOT NULL,
	comment_thread varchar(30) NULL,
	comment_object varchar(30) NOT NULL,
	profile_id varchar(30) NOT NULL,
	app_id varchar(30) NOT NULL,
	event_id varchar(30) NOT NULL,
	process_id varchar(30) NOT NULL,
	time_started timestamptz NOT NULL DEFAULT now(),
	time_updated timestamptz NOT NULL DEFAULT now(),
	time_finished timestamptz NOT NULL DEFAULT now(),
	active int4 NOT NULL DEFAULT 1,
	CONSTRAINT comments_comment_id_key UNIQUE (comment_id)
);

-- Permissions

ALTER TABLE public."comments" OWNER TO jmnmpyceddqxma;
GRANT ALL ON TABLE public."comments" TO jmnmpyceddqxma;




INSERT INTO public."comments" (comment_id,comment_attributes,comment_text,comment_thread,comment_object,profile_id,app_id,event_id,process_id,time_started,time_updated,time_finished,active) VALUES
	 ('30-characters','{}','lorem ipsum','30 characters','30 characters','30 characters','30 characters','30 characters','30 characters','2020-04-07 16:05:50.42839-05','2020-04-07 16:05:50.42839-05','2020-04-07 16:05:50.42839-05',1),
	 ('com_0565ca8058540',NULL,'the movie is awesome...',NULL,'pst_angelhasfallen','prf_adolphusnolan','app_thentrlco','obj_fff72296ed802','obj_b69cf7330c090','2020-04-07 16:07:08.326272-05','2020-04-07 16:07:08.326272-05','2020-04-07 16:07:08.326272-05',1),
	 ('com_e9158cfd4aa19',NULL,'oh, so you like, like it...? funny','com_39108d8213e0c','pst_angelhasfallen','prf_tamikahollis','app_thentrlco','obj_9d64b737fe955','obj_9d2b711ab170f','2020-04-07 16:08:22.551519-05','2020-04-07 16:08:22.551519-05','2020-04-07 16:08:22.551519-05',1),
	 ('com_74e6e06b0d892',NULL,'is that the sequel to london has fallen','com_0565ca8058540','pst_angelhasfallen','prf_mama','app_thentrlco','obj_76ba816b038d2','obj_7c29b511e862e','2020-04-07 16:09:41.073063-05','2020-04-07 16:09:41.073063-05','2020-04-07 16:09:41.073063-05',1),
	 ('com_dcd172c95f93e',NULL,'Yeah, mama... been waiting on this for a while.','com_0565ca8058540','pst_angelhasfallen','prf_adolphusnolan','app_thentrlco','obj_41711424291bb','obj_a3140c6032e6a','2020-04-07 16:14:18.025995-05','2020-04-07 16:14:18.025995-05','2020-04-07 16:14:18.025995-05',1),
	 ('com_39108d8213e0c',NULL,'like... all the way frfr',NULL,'pst_angelhasfallen','prf_adolphusnolan','app_thentrlco','obj_3f01b8a6e1284','obj_3337abcc1ec6b','2020-04-07 16:07:35.959-05','2020-04-07 16:07:35.959-05','2020-04-07 16:07:35.959-05',1);


	 INSERT INTO public.acknowledgements (acknowledgement_id,acknowledgement_attributes,acknowledgement_type,acknowledgement_object,profile_id,app_id,event_id,process_id,time_started,time_updated,time_finished,active) VALUES
	 ('ack_040afb9bdbeaf','{"app":[{"id":"app_wvrynUrgd"}]}','smile','pst_sEftyHjkiuBFp','prf_adolphusnolan','app_thentrlco','obj_ef68051b5ab7d','obj_f1dac4b1a0157','2020-04-07 13:39:11.254702-05','2020-04-07 13:39:11.254702-05','2020-04-07 13:39:11.254702-05',1);

	 
