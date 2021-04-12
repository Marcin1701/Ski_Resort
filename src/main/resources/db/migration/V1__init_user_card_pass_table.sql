CREATE TABLE Card
  (
    id         INTEGER NOT NULL ,
    start_date DATE NOT NULL ,
    end_date   DATE NOT NULL ,
    User_id    INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Card__IDX ON Card
  (
    User_id ASC
  )
  ;
ALTER TABLE Card ADD CONSTRAINT Card_PK PRIMARY KEY ( id ) ;


CREATE TABLE "User"
  (
    id         INTEGER NOT NULL ,
    first_name VARCHAR (30) NOT NULL ,
    last_name  VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE "User" ADD CONSTRAINT User_PK PRIMARY KEY ( id ) ;


ALTER TABLE Card ADD CONSTRAINT Card_User_FK FOREIGN KEY ( User_id ) REFERENCES "User" ( id ) ;
