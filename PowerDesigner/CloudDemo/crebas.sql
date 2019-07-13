/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/7/7 21:16:10                            */
/*==============================================================*/


drop table if exists actor;

drop table if exists advance;

drop table if exists cinema;

drop table if exists city;

drop table if exists direcor;

drop table if exists movie;

drop table if exists "order";

drop table if exists play;

drop table if exists user;

drop table if exists variety;

/*==============================================================*/
/* Table: actor                                                 */
/*==============================================================*/
create table actor
(
   id                   numeric(20,0) not null,
   name                 varchar(30),
   gender               varchar(15),
   age                  varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: advance                                               */
/*==============================================================*/
create table advance
(
   id                   integer not null,
   user_id              integer,
   movie_id             integer,
   number               integer,
   primary key (id)
);

/*==============================================================*/
/* Table: cinema                                                */
/*==============================================================*/
create table cinema
(
   id                   numeric(20,0) not null,
   movie_id             numeric(20,0),
   city_id              varchar(50),
   name                 varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: city                                                  */
/*==============================================================*/
create table city
(
   id                   numeric(20,0) not null,
   name                 varchar(50),
   rank                 numeric(15,0),
   primary key (id)
);

/*==============================================================*/
/* Table: direcor                                               */
/*==============================================================*/
create table direcor
(
   id                   numeric(20,0) not null,
   name                 varchar(50),
   gender               varchar(15),
   age                  numeric(10,0),
   primary key (id)
);

/*==============================================================*/
/* Table: movie                                                 */
/*==============================================================*/
create table movie
(
   id                   numeric(20,0) not null,
   name                 varchar(50),
   protagonist          varchar(30),
   director_id          numeric(20,0),
   price                float(30),
   releaseday           numeric(10,0),
   releasetime          numeric(10,0),
   time                 numeric(60,0),
   page                 varchar(120),
   brief                varchar(500),
   variety_id           numeric(20,0),
   primary key (id)
);

/*==============================================================*/
/* Table: "order"                                               */
/*==============================================================*/
create table "order"
(
   id                   integer not null,
   count                integer,
   movie_id             integer,
   primary key (id)
);

/*==============================================================*/
/* Table: play                                                  */
/*==============================================================*/
create table play
(
   id                   numeric(20,0) not null,
   movie_id             numeric(20,0),
   actor_id             numeric(20,0),
   primary key (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   integer not null,
   name                 varchar(30),
   phone                integer,
   gender               varchar(15),
   primary key (id)
);

/*==============================================================*/
/* Table: variety                                               */
/*==============================================================*/
create table variety
(
   id                   numeric(20,0) not null,
   "label"              varchar(80),
   primary key (id)
);

alter table advance add constraint FK_Reference_2 foreign key (user_id)
      references user (id) on delete restrict on update restrict;

alter table advance add constraint FK_Reference_3 foreign key (movie_id)
      references movie (id) on delete restrict on update restrict;

alter table cinema add constraint FK_Reference_4 foreign key (movie_id)
      references movie (id) on delete restrict on update restrict;

alter table cinema add constraint FK_Reference_5 foreign key (city_id)
      references city (id) on delete restrict on update restrict;

alter table movie add constraint FK_Reference_8 foreign key (director_id)
      references direcor (id) on delete restrict on update restrict;

alter table movie add constraint FK_Reference_9 foreign key (variety_id)
      references variety (id) on delete restrict on update restrict;

alter table "order" add constraint FK_create foreign key (movie_id)
      references user (id) on delete restrict on update restrict;

alter table play add constraint FK_Reference_6 foreign key (movie_id)
      references movie (id) on delete restrict on update restrict;

alter table play add constraint FK_Reference_7 foreign key (actor_id)
      references actor (id) on delete restrict on update restrict;

