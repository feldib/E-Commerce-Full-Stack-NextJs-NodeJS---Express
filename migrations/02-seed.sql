-- Ensure UTF-8 for data insertion
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number
) values (
	"Nagy",
    "Béla",
    "user@user.com",
    "password",
    "Bp., Hungary",
    "+36707777777"
);

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number
) values (
	"Kiss",
    "Ernő",
    "erni.kiss@gmail.com",
    "password",
    "Bp., Hungary",
    "+361111111111"
);

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number
) values (
	"Elek",
    "Benedek",
    "elek613@rotschildboulvard.com",
    "password",
    "TLV, Israel",
    "+9721130233"
);

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number
) values (
    "James",
    "Smith",
    "james.smith@email.com",
    "password",
    "Tinnye, Hungary",
    "+36117714420"
);

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number
) values (
	"Ster",
    "Judit",
    "jj32@csillag.com",
    "password",
    "NYC, USA",
    "+319714420"
);

insert into users (
    last_name,
	first_name,
	email,
	passw,
	address,
	phone_number,
    is_admin
) values (
	"Tóth",
    "Ernő",
    "admin@admin.com",
    "password",
    "Kijiv., Ukrajna",
    "+36606606666",
    true
);

SELECT * FROM users;

insert into categories (cname)
values ("Oil Paining");

insert into categories (cname)
values ("Sculpture");

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Spring", "Boticelli", 3, 1, "
Primavera (meaning 'Spring'), is a large panel painting in tempera paint by the Italian Renaissance painter Sandro Botticelli made in the late 1470s or early 1480s (datings vary). It has been described as one of the most written about, and most controversial paintings in the world, and also one of the most popular paintings in Western art
", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (1, "https://lh3.googleusercontent.com/ci/AA1T9HJW_BIK8mECXLBj2hHKcEHWv4r5aCrPfEVyIXf-TEm5mqHdCgW38rEtMox0jkfAt6-jREYCo557=s1200", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (1, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (1, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (1, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Mona Lisa", "Michelangelo", 66, 4, "
The painting has been definitively identified to depict Italian noblewoman Lisa del Giocondo. It is painted in oil on a white Lombardy poplar panel. Leonardo never gave the painting to the Giocondo family, and it is believed he later left it in his will to his favored apprentice Salaì. It was believed to have been painted between 1503 and 1506; however, Leonardo may have continued working on it as late as 1517. It was acquired by King Francis I of France and is now the property of the French Republic. It has been on permanent display at the Louvre in Paris since 1797.
", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (2, "https://cdn.britannica.com/24/189624-050-F3C5BAA9/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (2, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (2, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Wedding", "Chagall", 666, 2, "
'The darkness has gathered before my eyes,' reads the despairing final sentence that Chagall added to Bella's book, First Encounter. When it was first published, in 1947, she had already been dead for three years. She had died in mysterious circumstances, of a viral infection, and all the signs that seemed to betoken a better world had gone. The muse Chagall had so often appealed to left her book as a testament, as a final spur for her husband's work.
", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (3, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (3, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (3, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Winter", "Breughel", 120, 94, "
The Hunters in the Snow (Dutch: Jagers in de Sneeuw), also known as The Return of the Hunters, is a 1565 oil-on-wood painting by Pieter Bruegel the Elder. The Northern Renaissance work is one of a series of works, five of which still survive, that depict different times of the year. The painting is in the collection of the Kunsthistorisches Museum in Vienna, Austria. This scene is set in the depths of winter during December/January.
", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (4, "https://medias.gazette-drouot.com/prod/medias/mediatheque/101978.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (4, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (4, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values ( "New Artwork", "Benedek Földes", 8, 6, "The artwist came up with the idea while reading a philopsophycal work by Jean-Paul Sartre.", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (5, "https://img.freepik.com/free-vector/hand-drawn-elephant-outline_23-2149268000.jpg", true);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values ( "The Thinker", "Rodin", 12, 4, "
The Thinker (French: Le Penseur) is a bronze sculpture by Auguste Rodin, usually placed on a stone pedestal. The work depicts a nude male figure of heroic size sitting on a rock. He is seen leaning over, his right elbow placed on his left thigh, holding the weight of his chin on the back of his right hand. The pose is one of deep thought and contemplation, and the statue is often used as an image to represent philosophy.
", 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (6, "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Musée_Rodin_1.jpg/330px-Musée_Rodin_1.jpg", true);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values ( "The Statue of Libertyr", "Bartholdi", 1000, 1, "
The Statue of Liberty (Liberty Enlightening the World; French: La Liberté éclairant le monde) is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. The statue was dedicated on October 28, 1886."
, 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (7, "https://cdn.britannica.com/82/183382-050-D832EC3A/Detail-head-crown-Statue-of-Liberty-New.jpg", true);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values ( " Freedom Statue", "Kisfaludy-Stróbl", 666, 779,
"The Liberty Statue or Freedom Statue (Hungarian: Szabadság-szobor [ˈsɒbɒtt͡ʃaːɡ ˈsobor]) is a monument on the Gellért Hill in Budapest, Hungary. It commemorates those who sacrificed their lives for the independence, freedom, and prosperity of Hungary."
, 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (8, 
"https://hungarytoday.hu/wp-content/uploads/2017/04/158281_szabadsag_szobor.jpg"
, true);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Legend", "János Götz", 340, 5, "
János Götz was one of the most taleted sculptors of his time. Despite loosing his life at a young age, he has contributed tremendously to Hungarian art. This beautiful creation is considered by some to be one of his best.
", 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (9, "https://s3.eu-central-1.amazonaws.com/kozterkep/photos/bc023340fee354d233471512179849c7_1.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (9, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (9, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "János Götz", "Jonanna Götz", 120, 4, "
Johanna Götz, daughter of János Götz, and similarly to him a talented sculptor made this stunning sculpture in his memory.
", 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (10, "https://s3.eu-central-1.amazonaws.com/kozterkep/photos/a7c6f0f514fe0d3667c56207fc3c4430_4.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (10, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (10, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Ferenc Molnár", "Johanna Götz", 43, 17, "
Franz Molnar was a Hungarian-born author stage director dramatist and poet widely regarded as Hungarys most celebrated and controversial playwright. His primary aim through his writing was to entertain by transforming his personal experiences into literary works of art. He never connected to any one literary movement. However he did utilize the precepts of naturalism Neo-Romanticism Expressionism and Freudian psychoanalytic theories but only as long as they suited his desires. By fusing the realistic narrative and stage tradition of Hungary with Western influences into a cosmopolitan amalgam Molnár emerged as a versatile artist whose style was uniquely his own. 
", 2);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (11, "https://s3.eu-central-1.amazonaws.com/kozterkep/photos/ef27f3e8bda9d382facafc382c30e50f_1.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (11, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (11, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);


insert into artworks (title, artist_name, price, quantity, descript, category_id)
values (  "Self-portrait", "Károly Ferenczy", 43, 17, "
Károly Ferenczy (February 8, 1862 – March 18 1917) was a Hungarian painter and leading member of the Nagybánya artists colony. He was among several artists who went to Munich for study in the late nineteenth century where he attended free classes by the Hungarian painter Simon Hollósy. Upon his return to Hungary Ferenczy helped found the artists colony in 1896 and became one of its major figures. Ferenczy is considered the father of Hungarian impressionism and post-impressionism and the founder of modern Hungarian painting.
", 1);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (12, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Ferenczy_Károly_önarckép_1903.jpg/800px-Ferenczy_Károly_önarckép_1903.jpg", true);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (12, "https://arthive.net/res/media/img/oy800/work/40a/271819.webp", false);

insert into artwork_pictures(artwork_id, picture_path, is_thumbnail)
values (12, "https://i2.wp.com/zet.gallery/blog/wp-content/uploads/2016/02/Vicent-Van-Gogh-Starry-Night-Famous-Oil-Paintings-www.shairart.com_.jpg?fit=1280%2C1014", false);

select * from artwork_pictures where is_thumbnail=true;


insert into featured (artwork_id)
values (1);

insert into featured (artwork_id)
values (2);

insert into featured (artwork_id)
values (3);

insert into tags (tname)
values ("Classic");

insert into tags (tname)
values ("Calm");

insert into tags (tname)
values ("Inspiring");

insert into tags (tname)
values ("Avant-guarde");

insert into tags (tname)
values ("Thought provoking");

insert into tags (tname)
values ("Serene");

insert into artwork_tags(artwork_id, tag_id)
values(1, 1);
insert into artwork_tags(artwork_id, tag_id)
values(1, 2);
insert into artwork_tags(artwork_id, tag_id)
values(1, 3);
insert into artwork_tags(artwork_id, tag_id)
values(2, 2);
insert into artwork_tags(artwork_id, tag_id)
values(2, 3);
insert into artwork_tags(artwork_id, tag_id)
values(2, 4);
insert into artwork_tags(artwork_id, tag_id)
values(3, 1);
insert into artwork_tags(artwork_id, tag_id)
values(3, 3);
insert into artwork_tags(artwork_id, tag_id)
values(3, 5);
insert into artwork_tags(artwork_id, tag_id)
values(4, 6);
insert into artwork_tags(artwork_id, tag_id)
values(4, 1);
insert into artwork_tags(artwork_id, tag_id)
values(4, 4);
insert into artwork_tags(artwork_id, tag_id)
values(5, 3);
insert into artwork_tags(artwork_id, tag_id)
values(5, 2);
insert into artwork_tags(artwork_id, tag_id)
values(5, 4);
insert into artwork_tags(artwork_id, tag_id)
values(6, 3);
insert into artwork_tags(artwork_id, tag_id)
values(6, 2);
insert into artwork_tags(artwork_id, tag_id)
values(6, 4);
insert into artwork_tags(artwork_id, tag_id)
values(7, 1);
insert into artwork_tags(artwork_id, tag_id)
values(7, 3);
insert into artwork_tags(artwork_id, tag_id)
values(7, 2);
insert into artwork_tags(artwork_id, tag_id)
values(8, 4);
insert into artwork_tags(artwork_id, tag_id)
values(8, 5);
insert into artwork_tags(artwork_id, tag_id)
values(8, 6);
insert into artwork_tags(artwork_id, tag_id)
values(9, 2);
insert into artwork_tags(artwork_id, tag_id)
values(9, 6);
insert into artwork_tags(artwork_id, tag_id)
values(9, 4);
insert into artwork_tags(artwork_id, tag_id)
values(10, 1);
insert into artwork_tags(artwork_id, tag_id)
values(10, 3);
insert into artwork_tags(artwork_id, tag_id)
values(10, 5);
insert into artwork_tags(artwork_id, tag_id)
values(11, 4);
insert into artwork_tags(artwork_id, tag_id)
values(11, 5);
insert into artwork_tags(artwork_id, tag_id)
values(11, 6);
insert into artwork_tags(artwork_id, tag_id)
values(12, 1);
insert into artwork_tags(artwork_id, tag_id)
values(12, 1);
insert into artwork_tags(artwork_id, tag_id)
values(12, 1);


insert into reviews (artwork_id, user_id, review_text, approved, title)
values(
	1,
    2,
    "I simply love it! The colours, the athmosphere... I fell like I'm there!",
    true,
    "Good!"
);

insert into reviews (artwork_id, user_id, review_text, approved, title)
values(
	1,
    1,
    "To be honest, I don't understand what was all the fuss for, I don't think this is anything out of the ordinary.. It is a waste of money if you ask me...",
    true,
    "B-"
);

update artworks set removed = false;

select * from invoice_data;

select * from users;