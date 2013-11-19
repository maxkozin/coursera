CREATE TABLE `asia` (
`a` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into asia values(1,0.01),(0, 0.99);


CREATE TABLE `smoking` (
`s` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into smoking values(1,0.5),(0, 0.5);


CREATE TABLE `tuberculosis` (
`t` tinyint(3) unsigned NOT NULL default 0,
`a` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`a`,`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into tuberculosis values(1,1,0.05),(1,0, 0.01),(0,1,0.95),(0,0, 0.99);


CREATE TABLE `lung` (
`l` tinyint(3) unsigned NOT NULL default 0,
`s` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`l`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into lung values(1, 1,0.1),(1, 0, 0.01), (0, 1,0.9),(0, 0, 0.99);





CREATE TABLE `bronchitis` (
`b` tinyint(3) unsigned NOT NULL default 0,
`s` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`b`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into bronchitis values(1, 1,0.6),(1, 0, 0.3),(0, 1,0.4),(0, 0, 0.7);




CREATE TABLE `xray` (
`x` tinyint(3) unsigned NOT NULL default 0,
`e` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`x`,`e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into xray values(1, 1,0.98),(1, 0, 0.05), (0, 1,0.02),(0, 0, 0.95);



CREATE TABLE `either` (
`e` tinyint(3) unsigned NOT NULL default 0,
`l` tinyint(3) unsigned NOT NULL default 0,
`t` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`e`,`t`, `l`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into either values (1,1,1,1),(1,1, 0, 1),(1,0, 1, 1),(1,0, 0, 0), (0,1,1,0),(0,1, 0, 0),(0,0, 1, 0),(0,0, 0, 1);


CREATE TABLE `dyspnoea` (
`d` tinyint(3) unsigned NOT NULL default 0,
`e` tinyint(3) unsigned NOT NULL default 0,
`b` tinyint(3) unsigned NOT NULL default 0,
`p` float unsigned NOT NULL default 0.0,
PRIMARY KEY (`d`,`e`, `b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into dyspnoea values(1, 1,1,0.9),(1, 1, 0, 0.7),(1, 0, 1, 0.8),(1, 0, 0, 0.1),(0, 1,1,0.1),(0, 1, 0, 0.3),(0, 0, 1, 0.2),(0, 0, 0, 0.9);



