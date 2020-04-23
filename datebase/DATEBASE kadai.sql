-- SQLite
--テーブルを作成してください

 

--アーティスト・バンド　2
CREATE TABLE IF NOT EXISTS artist ( 
    id INTEGER PRIMARY KEY, 
    name TEXT
)

INSERT INTO artist VALUES (1,"abc"), (2,"def")
 

--曲　各アルバム　3
CREATE TABLE IF NOT EXISTS song (
    id INTEGER PRIMARY KEY,
    name TEXT,
    album INTEGER,
    mediaType INTEGER,
    genre INTEGER,
    composer TEXT,
    second INTEGER,
    FOREIGN KEY (id) REFERENCES album(id),
    FOREIGN KEY (id) REFERENCES genre(id)
)

INSERT INTO song VALUES (


--アルバム　各アーティスト　2
CREATE TABLE IF NOT EXISTS album (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist INTEGER,
    FOREIGN KEY (id) REFERENCES artist(id)
)

 

--ジャンル　3
CREATE TABLE IF NOT EXISTS genre (
    id　INTEGER PRIMARY KEY,
    name TEXT
)
 

--メディアタイプ　3
CREATE TABLE IF NOT EXISTS mediatype (
    id　INTEGER PRIMARY KEY,　
    name TEXT
)
 

--プレイリスト　2
CREATE TABLE IF NOT EXISTS playlist (
    id　INTEGER PRIMARY KEY,　
    name TEXT
)
 

--曲メディアタイプ 3
CREATE TABLE IF NOT EXISTS song_mediatype (
    media_id　INTEGER,
    song_id INTEGER,
    PRIMARY KEY(media_id,song_id),
    FOREIGN KEY (media_id) REFERENCES media(id)
    FOREIGN KEY (song_id) REFERENCES song(id)
)
 


--曲プレイリスト 各プレイリストに曲２
CREATE TABLE IF NOT EXISTS song_playlist (
    playlist_id INTEGER,
    song_ID INTEGER,
    PRIMARY KEY(playlist_id,song_id)
    FOREIGN KEY (playlist_id) REFERENCES playlist(id)
    FOREIGN KEY (song_id) REFERENCES song(id)
)
 


--関係性
--アーティスト　1　:　N アルバム

--アルバム 1　:　N　曲
        
-- 曲　N　: 1　ジャンル
    
-- 曲　N　:　N メディアタイプ
    
-- 曲　N　:　N プレイリスト


