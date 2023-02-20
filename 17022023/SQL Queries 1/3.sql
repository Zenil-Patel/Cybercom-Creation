create database cricket;

create table team (
	team_id int auto_increment primary key,
    team_name varchar(255) not null 
);


create table players(
		id int auto_increment primary key,
        player_name varchar(255) not null,
        team_id int,
        player_expertise varchar(255),
        foreign key (team_id) references team (team_id)
);