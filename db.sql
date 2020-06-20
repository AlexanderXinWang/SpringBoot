drop database if exists sbDemo;
create database sbDemo charset=utf8;
use sbDemo;
/* 管理员表 */
create table admin(
  id varchar(255) primary key,
  loginName varchar(255),
  password varchar(255),
  adminType int default 0 ,  -- 1 超级管理员  0 普通管理员
  lastLoginTime datetime default null
);

insert into admin(id, loginName, password,adminType) value ('admin00011','admin','admin',1);
insert into admin(id, loginName, password,adminType) value ('admin00012','hello','hello123',0);

/* 教师表 */
create table teacher(
  id varchar(255) primary key,
  name varchar(255)
);
/* 班级表 */
create table clazz(
  id varchar(255) primary key,
  name varchar(255),
  stuCount varchar(255),
  creteTime datetime default null
);
-- 关联层
