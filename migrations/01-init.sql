create table users (
	id integer AUTO_INCREMENT,
  last_name varchar(100),
	first_name varchar(100),
	email varchar(100),
	passw varchar(100),
	address varchar(500),
	phone_number varchar(20),
  is_admin boolean default false,
  primary key (id)
);

create table orders (
	id integer AUTO_INCREMENT,
    user_id integer,
	time_ordered datetime default now(),
    primary key (id)
);
alter table orders add foreign key (user_id) references users(id);

create table categories (
  id integer AUTO_INCREMENT,
  cname varchar(100),
  removed boolean default false,
  primary key (id)
);

create table artworks (
  id integer AUTO_INCREMENT,
  title varchar(100),
  artist_name varchar(200),
  price float,
  quantity integer,
  descript varchar(1000),
  category_id integer,
  removed boolean default false,
  date_added datetime default now(),
  primary key (id)
);

alter table artworks add foreign key (category_id) references categories(id);

create table artworks_ordered (
  id integer AUTO_INCREMENT,
  order_id integer,
  quantity integer,
  price integer,
  artwork_id integer,
  primary key (id)
);
alter table artworks_ordered add foreign key (order_id) references orders(id);
alter table artworks_ordered add foreign key (artwork_id) references artworks(id);

create table artworks_in_shopping_list (
  id integer AUTO_INCREMENT,
  user_id integer,
  quantity integer,
  artwork_id integer,
  primary key (id)
);

alter table artworks_in_shopping_list add foreign key (artwork_id) references artworks(id);
alter table artworks_in_shopping_list add foreign key (user_id) references users(id);

create table featured (
  id integer AUTO_INCREMENT,
  artwork_id integer,
  removed boolean default false,
  date_featured datetime default now(),
  primary key (id)
);
alter table featured add foreign key (artwork_id) references artworks(id);

create table tags (
  id integer AUTO_INCREMENT,
  tname varchar(100),
  removed boolean default false,
  primary key (id)
);

create table artwork_tags(
  id integer AUTO_INCREMENT,
  artwork_id integer,
  tag_id integer,
  removed boolean default false,
  primary key (id)
);
alter table artwork_tags add foreign key (artwork_id) references artworks(id);
alter table artwork_tags add foreign key (tag_id) references tags(id);

create table artwork_pictures(
  id integer AUTO_INCREMENT,
  artwork_id integer,
  picture_path varchar (200),
  is_thumbnail boolean default false,
  removed boolean default false,
  primary key (id)
);
alter table artwork_pictures add foreign key (artwork_id) references artworks(id);

create table wishlisted (
  id integer AUTO_INCREMENT,
  user_id integer,
  artwork_id integer,
  time_wishlisted datetime default now(),
  removed boolean default false,
  primary key (id)
);
alter table wishlisted add foreign key (artwork_id) references artworks(id);
alter table wishlisted add foreign key (user_id) references users(id);

create table reviews (
  id integer AUTO_INCREMENT,
  artwork_id integer,
  user_id integer,
  time_review_posted datetime default now(),
  title varchar(100),
  review_text varchar(1000),
  approved boolean default false,
  removed boolean default false,
  primary key (id)
);
alter table reviews add foreign key (artwork_id) references artworks(id);
alter table reviews add foreign key (user_id) references users(id);

create table views (
  id integer AUTO_INCREMENT,
  artwork_id integer,
  user_id integer,
  time_viewed datetime,
  primary key (id)
);
alter table views add foreign key (artwork_id) references artworks(id);
alter table views add foreign key (user_id) references users(id);

create table messages_to_administrator (
  id integer AUTO_INCREMENT,
  email varchar(100),
  message_title varchar(100),
  message_txt varchar(1000),
  message_time datetime default now(),
  answered boolean default false,
  removed boolean default false,
  primary key (id)
);

create table answers_to_messages (
  id integer AUTO_INCREMENT,
  message_id integer,
  answer_Text varchar(1000),
  answer_time datetime,
  primary key (id)
);
alter table answers_to_messages add foreign key (message_id) references messages_to_administrator(id);

create table ratings (
  id integer AUTO_INCREMENT,
  artwork_id integer,
  user_id integer,
  rating integer,
  primary key (id)
);
alter table ratings add foreign key (artwork_id) references artworks(id);
alter table ratings add foreign key (user_id) references users(id);

create table invoice_data (
  id integer AUTO_INCREMENT,
  last_name varchar(100),
  first_name varchar(100),
  email varchar(100),
  address varchar(500),
  phone_number varchar(20),
  order_id integer,
  primary key (id)
);
alter table invoice_data add foreign key (order_id) references orders(id);
