GRANT ALL PRIVILIGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '123456';

GRANT ALL PRIVILIGES ON mysql.user.host, metro_cdmx.drivers* TO 'himok'@'localhost' IDENTIFIED BY 'himiko';

GRANT ALL PRIVILIGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON *.* TO 'himiko'@'localhost' IDENTIFIED BY 'himiko';

FLUSH PRIVILEGES;

SELECT host user, password from user;

DROP user 'himiko'@'localhost';
FLUSH PRIVILIGES

SELECT user();

mariadb -u himiko -p < 1-create-databe.sql;












-- 
USE jsf_metro_cdmx;


create table `stations` (
    `id` bigint (20) unsigned not null auto_increment,
    `name` varchar(50) not null,
    `created_at` timestamp not null default current_timestamp,
    `update_at` timestamp not null default current_timestamp,

    primary key(`id`)
);

-- Creación de la tabla `station_delete`
create table `stations_delete` (
    `id` bigint (20) unsigned not null auto_increment,
    `name` varchar(50) not null,
    `created_at` timestamp not null default current_timestamp,
    `update_at` timestamp not null default current_timestamp,

    primary key(`id`)
);

-- Creación de la tabla `trains`
-- Assuming you have a 'lines' table with an 'id' column
CREATE TABLE `trains` (
    `serial_number` VARCHAR(10) NOT NULL,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `uploaded_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY(serial_number),
    CONSTRAINT `train_line_idforeign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
);

create table `lines` (
    `id` bigint (20) unsigned not null auto_increment,
    `name` varchar(10) not null,
    `color` varchar(15) not null,
    `created_at` timestamp not null default current_timestamp,
    `update_at` timestamp not null default current_timestamp,

    primary key(`id`)
);
