CREATE DATABASE Skilvulmusicplayer;
USE Skilvulmusicplayer;
CREATE TABLE User {
    user_id INT(10),
    name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50),
    FOREIGN KEY Playlist REFERENCES singer(singer_id)
};
CREATE TABLE Singer {
    singer_id INT(10),
    name VARCHAR(50),
    FOREIGN KEY Album REFERENCES album(album_id)
};
CREATE TABLE Album {
    album_id INT(10) PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    singer_id VARCHAR(50),
    FOREIGN KEY Track REFERENCES Track(track_id)
};
CREATE TABLE Playlist {
    playlist_id INT(10),
    user_id INT(10),
    tracks INT(10),
    FOREIGN KEY Track REFERENCES Track(track_id)
};
CREATE TABLE Track {
    track_id INT(10),
    title VARCHAR(50),
    singer_id INT(10),
    album_id INT(10),
    FOREIGN KEY Playlist REFERENCES Playlist(playlist_id)
};