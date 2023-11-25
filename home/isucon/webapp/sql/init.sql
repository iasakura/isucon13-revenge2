TRUNCATE TABLE themes;
TRUNCATE TABLE icons;
TRUNCATE TABLE reservation_slots;
TRUNCATE TABLE livestream_viewers_history;
TRUNCATE TABLE livecomment_reports;
TRUNCATE TABLE ng_words;
TRUNCATE TABLE reactions;
TRUNCATE TABLE tags;
TRUNCATE TABLE livestream_tags;
TRUNCATE TABLE livecomments;
TRUNCATE TABLE livestreams;
TRUNCATE TABLE users;

ALTER TABLE `themes` auto_increment = 1;
ALTER TABLE `icons` auto_increment = 1;
ALTER TABLE `reservation_slots` auto_increment = 1;
ALTER TABLE `livestream_tags` auto_increment = 1;
ALTER TABLE `livestream_viewers_history` auto_increment = 1;
ALTER TABLE `livecomment_reports` auto_increment = 1;
ALTER TABLE `ng_words` auto_increment = 1;
ALTER TABLE `reactions` auto_increment = 1;
ALTER TABLE `tags` auto_increment = 1;
ALTER TABLE `livecomments` auto_increment = 1;
ALTER TABLE `livestreams` auto_increment = 1;
ALTER TABLE `users` auto_increment = 1;

ALTER TABLE ng_words DROP INDEX ng_words_live_user; 
ALTER TABLE ng_words ADD INDEX ng_words_live_user(livestream_id, user_id);

ALTER TABLE livestream_tags DROP INDEX livestrmtag_live;
ALTER TABLE livestream_tags ADD INDEX livestrmtag_live(livestream_id);

ALTER TABLE livestream DROP INDEX livestream_userid;
ALTER TABLE livestream ADD INDEX livestream_userid(user_id);

ALTER TABLE reaction DROP INDEX reaction_livestrmid;
ALTER TABLE reaction ADD INDEX reaction_livestrmid(livestream_id);

ALTER TABLE livecomments DROP INDEX livecomments_livestrmid;
ALTER TABLE livecomments ADD INDEX livecomments_livestrmid(livestream_id);
