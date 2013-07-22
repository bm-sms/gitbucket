CREATE TABLE GROUP_MEMBER(
  GROUP_NAME VARCHAR(100) NOT NULL,
  USER_NAME  VARCHAR(100) NOT NULL
);

ALTER TABLE GROUP_MEMBER ADD CONSTRAINT IDX_GROUP_MEMBER_PK PRIMARY KEY (GROUP_NAME, USER_NAME);
ALTER TABLE GROUP_MEMBER ADD CONSTRAINT IDX_GROUP_MEMBER_FK0 FOREIGN KEY (GROUP_NAME) REFERENCES ACCOUNT (USER_NAME);
ALTER TABLE GROUP_MEMBER ADD CONSTRAINT IDX_GROUP_MEMBER_FK1 FOREIGN KEY (USER_NAME) REFERENCES ACCOUNT (USER_NAME);

ALTER TABLE ACCOUNT ADD COLUMN GROUP_ACCOUNT BOOLEAN NOT NULL DEFAULT FALSE;
