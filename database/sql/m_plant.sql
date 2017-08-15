drop table if exists plant.m_plant;

create table plant.m_plant(
    id int not null auto_increment,
    name varchar(64) not null,
    genre varchar(64) not null,
    temp tinyint,
    humidity tinyint,
    luminous tinyint,
    SoilHumidity tinyint,
    CreatedAt datetime not null,
    UpdatedAt datetime not null,
    deleted tinyint(1) not null,
    CONSTRAINT PRIMARY KEY (id)
);
