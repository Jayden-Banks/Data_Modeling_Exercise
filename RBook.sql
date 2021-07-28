create table RBook_user (
  user_id serial primary key,
  user_name varchar,
  email varchar,
  password varchar
  );
  
create table ingredients (
  ingredient_id serial primary key,
  ingredient_name varchar
  );

create table recipe (
  recipe_id serial primary key,
  user_id int references RBook_user(user_id),
  ingredient_id int references ingredients(ingredient_id),
  public_status boolean,
  instructions text,
  recipe_name varchar
			
  );

create table share_recipes (
  user_id int references RBook_user(user_id),
  share_with_id int
  );

create table occasions (
  occassions_id serial primary key,
  user_id int references RBook_user(user_id),
  recipe_id int references recipe(recipe_id),
  occasion_name varchar
  );

create table grocery (
  grocery_id serial primary key,
  user_id int references RBook_user(user_id),
  ingredient_id int references ingredients(ingredient_id)
  );

insert into RBook_user (user_name, email, password)
values
	('jay', 'jayden@', 'orange'),
	('kay', 'kayden@', 'krange'), 
	('lay', 'layden@', 'lrange'),
	('may', 'mayden@', 'mrange'), 
	('nay', 'nayden@', 'nrange'); 

insert into ingredients (ingredient_name)
values
    ('tomato'),
    ('lettuce'),
    ('mango'),
    ('cheese'),
    ('grape');

insert into recipe (user_id, ingredient_id, public_status, instructions, recipe_name)
values
	(5,1,true,'shake the tomato and cook it', 'tomato dinner'),
    (4,2,false, 'cut the lettuce and chill it', 'salad lunch'),
    (3,3,true,'slice the mango and warm it', 'fruit snack'),
    (2,4,false,'melt the cheese and grate it', 'melted cheese'),
    (1,5,true,'eat the grape and like it', 'purple yummy');

select * from RBook_user;
select * from recipe;
select * from ingredients;