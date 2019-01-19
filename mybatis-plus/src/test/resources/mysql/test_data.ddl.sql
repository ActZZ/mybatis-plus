drop table if exists common_data;
drop table if exists common_logic_data;
drop table if exists mysql_data;
drop table if exists result_map_entity;

CREATE TABLE common_data (
    id        BIGINT primary key,
    test_int  integer,
    test_str  varchar(50),
    c_time    datetime,
    u_time    datetime,
    version   integer default 0,
    test_enum integer,
    tenant_id bigint
)ENGINE = innodb
DEFAULT CHARSET = utf8;

CREATE TABLE common_logic_data (
    id       BIGINT primary key,
    test_int integer,
    test_str varchar(50),
    c_time   datetime,
    u_time   datetime,
    deleted  tinyint default 0,
    version  integer default 0
)ENGINE = innodb
DEFAULT CHARSET = utf8;

CREATE TABLE mysql_data (
    id         BIGINT primary key,
    `order`    integer,
    `group`    integer,
    test_str   varchar(255),
    lambda_str varchar(255) default ''
)ENGINE = innodb
DEFAULT CHARSET = utf8;

CREATE TABLE result_map_entity (
    id         BIGINT primary key,
    column1    varchar(200) default '1',
    column2    varchar(200) default '2',
    column3    varchar(200) default '3',
    column4    varchar(200) default '4'
)ENGINE = innodb
DEFAULT CHARSET = utf8;
