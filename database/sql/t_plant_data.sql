drop table if exists plant.t_plant_data;

create table plant.t_plant_data(
    id int not null auto_increment,
    PlantId int not null,
    temp tinyint,
    humidity tinyint,
    luminous tinyint,
    SoilHumidity tinyint,
    CreatedAt datetime not null,
    UpdatedAt datetime not null,
    deleted tinyint(1) not null,
    CONSTRAINT PRIMARY KEY (id)
);

