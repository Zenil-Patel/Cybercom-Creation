# SQL Queries 3.2
# Case 1

create database blog;

create table blog_posts 
(
	id int,
    title varchar(255),
    body text,
    author_id int,
    created_at timestamp,
    updated_at timestamp,
    primary key (id)
);

INSERT INTO blog_posts VALUES 
  (1, 'My First Blog Post', 'This is my first blog post. Welcome to my blog!', 1, '2022-02-21 12:00:00', '2022-02-21 12:00:00'),
  (2, 'The Importance of Exercise', 'Exercise is important for maintaining a healthy body and mind. In this post, we explore the benefits of exercise and how you can make it a part of your daily routine.', 2, '2022-02-22 12:00:00', '2022-02-22 12:00:00'),
  (3, 'The Art of Cooking', 'Cooking is not just a way to feed yourself and others, but a form of creative expression. In this post, we explore the art of cooking and how you can make delicious and beautiful meals.', 3, '2022-02-23 12:00:00', '2022-02-23 12:00:00'),
  (4, 'The Benefits of Meditation', 'Meditation is a powerful tool for reducing stress, improving focus, and increasing well-being. In this post, we explore the benefits of meditation and how you can incorporate it into your daily life.', 1, '2022-02-24 12:00:00', '2022-02-24 12:00:00'),
  (5, 'Travel Tips for the Adventurous', 'Travel can be an exciting and fulfilling way to explore the world and gain new experiences. In this post, we offer tips and advice for those who want to travel more often and more adventurously.', 2, '2022-02-25 12:00:00', '2022-02-25 12:00:00'),
  (6, 'The Benefits of Yoga', 'Yoga is a practice that combines physical movement, breathwork, and mindfulness to promote health and well-being. In this post, we explore the benefits of yoga and how it can improve your life.', 3, '2022-02-26 12:00:00', '2022-02-26 12:00:00'),
  (7, 'The Science of Sleep', 'Sleep is a crucial aspect of our health and well-being. In this post, we explore the science of sleep and how you can improve your sleep habits for a better life.', 2, '2022-02-27 12:00:00', '2022-02-27 12:00:00'),
  (8, 'Tips for Starting a Successful Business', 'Starting a business can be challenging, but it can also be a rewarding experience. In this post, we offer tips and advice for those who want to start their own successful business.', 1, '2022-02-28 12:00:00', '2022-02-28 12:00:00'),
  (9, 'The Power of Positive Thinking', 'Positive thinking can have a profound impact on our lives and well-being. In this post, we explore the power of positive thinking and how you can cultivate a positive mindset for a better life.', 2, '2022-03-01 12:00:00', '2022-03-01 12:00:00'),
  (10, 'The Benefits of a Plant-Based Diet', 'A plant-based diet can have a wide range of health benefits, including weight loss, reduced inflammation, and improved digestion. In this post, we explore the benefits of a plant-based diet and how you can incorporate more plant-based foods into your life.', 3, '2022-03-02 12:00:00', '2022-03-02 12:00:00'),
  (11, 'The Art of Photography', 'Photography is a powerful form of visual art that can capture and communicate emotions, stories, and ideas. In this post, we explore the art of photography and how you can develop your own photographic style.', 1, '2022-03-03 12:00:00', '2022-03-03 12:00:00'),
  (12, 'The Benefits of Journaling', 'Journaling can be a powerful tool for self-reflection, emotional processing, and personal growth. In this post, we explore the benefits of journaling and how you can start your own journaling practice.', 2, '2022-03-04 12:00:00', '2022-03-04 12:00:00'),
  (13, 'The Importance of Self-Care', 'Self-care is essential for maintaining our physical, emotional, and mental health. In this post, we explore the importance of self-care and offer tips and advice for practicing self-care in your daily life.', 3, '2022-03-05 12:00:00', '2022-03-05 12:00:00'),
(14, 'Post 11', 'This is the body of post 11', 2, '2022-02-22 10:00:00', '2022-02-22 11:00:00'),
(15, 'Post 12', 'This is the body of post 12', 1, '2022-02-23 10:00:00', '2022-02-23 11:00:00'),
(16, 'Post 13', 'This is the body of post 13', 3, '2022-02-24 10:00:00', '2022-02-24 11:00:00'),
(17, 'Post 14', 'This is the body of post 14', 2, '2022-02-25 10:00:00', '2022-02-25 11:00:00'),
(18, 'Post 15', 'This is the body of post 15', 1, '2022-02-26 10:00:00', '2022-02-26 11:00:00'),
(19, 'Post 16', 'This is the body of post 16', 3, '2022-02-27 10:00:00', '2022-02-27 11:00:00'),
(20, 'Post 17', 'This is the body of post 17', 2, '2022-02-28 10:00:00', '2022-02-28 11:00:00'),
(21, 'Post 18', 'This is the body of post 18', 1, '2022-03-01 10:00:00', '2022-03-01 11:00:00'),
(22, 'Post 19', 'This is the body of post 19', 3, '2022-03-02 10:00:00', '2022-03-02 11:00:00'),
(23, 'Post 20', 'This is the body of post 20', 2, '2022-03-03 10:00:00', '2022-03-03 11:00:00');




create table blog_comments
(
	id int,
    post_id int,
    body text, 
    author_id int,
    created_at timestamp,
    primary key (id)
);

INSERT INTO blog_comments 
VALUES 
	(1, 1, 'Great post!', 2, '2022-01-01 12:00:00'),
	(2, 1, 'Thanks for sharing!', 3, '2022-01-02 09:30:00'),
	(3, 2, 'I completely agree.', 1, '2022-01-03 15:20:00'),
	(4, 3, 'This post was really helpful.', 4, '2022-01-04 21:10:00'),
	(5, 3, 'Can you write more about this topic?', 5, '2022-01-05 08:45:00'),
	(6, 4, 'I have a different opinion on this matter.', 6, '2022-02-10 17:30:00'),
	(7, 4, 'Interesting perspective.', 7, '2022-02-11 10:15:00'),
	(8, 5, 'Thanks for sharing these insights.', 2, '2022-03-20 12:45:00'),
	(9, 6, 'I found this post really inspiring.', 8, '2022-04-05 08:00:00'),
	(10, 6, 'Great advice, thanks!', 9, '2022-04-06 14:30:00');

