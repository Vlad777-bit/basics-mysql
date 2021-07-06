use vk;

insert into users (`id`, `firstname`, `lastname`, `email`, phone)
	values ('61', 'Alex', 'Johns', '2we@sdf.er', '365342');

insert into users values
	('111', 'Fred', 'Russval', 'q1w2@les.com', null, 212434),
	('112', 'Fred', 'Russval', 'q2w3@les.com', null, 21245334),
	('113', 'Fred', 'Russval', 'q2w4@les.com', null, 21245644);

insert into users 
set
	firstname = 'John',
	lastname  = 'Weak',
	email = 'youkillmydog@bad.su',
	phone = '2352523552'
;	

select distinct firstname, lastname from `users`;

select * from users where id = 1348;

select * from users where id in (1234, 802, 60);

update friend_requests 
set 
	status = 'approved', 
	updated_at = now() 
where 
	initiator_user_id = 1001 
;

delete from users 
where id = 1001;


