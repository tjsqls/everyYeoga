DROP TABLE user_tb;
DROP TABLE travelPlan_tb;
DROP TABLE join_tb;
DROP TABLE join_evaluation_tb;
DROP TABLE group_tb;
DROP TABLE group_user_tb;
DROP TABLE article_tb;
DROP TABLE comment_tb;
DROP TABLE attachment_tb;
DROP TABLE article_report_tb;
DROP TABLE comment_report_tb;
DROP TABLE evaluation_tb;
DROP TABLE report_tb;
DROP TABLE guideHistory_tb;
DROP TABLE travelerHistory_tb;
DROP TABLE blocked_ser_tb;

CREATE TABLE user_tb(
	id VARCHAR(20)PRIMARY KEY,
	pw VARCHAR(20),
	name VARCHAR(20),
	BirthDate VARCHAR(20),
	phoneNumber VARCHAR(11),
	email VARCHAR(50),
	accessBlockedDate DATE
);

CREATE TABLE travelPlan_tb(
	travelPlanId NUMBER PRIMARY KEY,
	travelerId VARCHAR(20),
	speakingAbility VARCHAR(200),
	travelArea VARCHAR(200),
	numberOfVisits VARCHAR(200),
	startDate DATE,
	endDate DATE,
	theme VARCHAR(50),
	NumberOfTraveler VARCHAR(500),
	preferGuide VARCHAR(100),
	selfIntroduction VARCHAR(1000),
	gatheringStatus VARCHAR(20)
);

CREATE TABLE join_tb(
	joinId NUMBER PRIMARY KEY,
	guideId VARCHAR(20),
	speakingAbility VARCHAR(200),
	travelArea VARCHAR(200),
	guideExperience VARCHAR(200),
	selfIntroduction VARCHAR(1000),
	joinReason VARCHAR(1000),
	travelPlanId NUMBER
);

CREATE TABLE group_tb(
	groupId NUMBER PRIMARY KEY,
	regDate DATE,
	travelPlanId NUMBER
);

CREATE TABLE group_user_tb(
	groupId NUMBER,
	userId VARCHAR(20),
	CONSTRAINT groupUserId PRIMARY KEY (groupId, userId)
);

CREATE TABLE article_tb(
	articleId NUMBER PRIMARY KEY,
	title VARCHAR(100),
	content VARCHAR(1000),
	writer VARCHAR(20),
	regDate DATE,
	groupId NUMBER
);

CREATE TABLE comment_tb(
	commentId NUMBER PRIMARY KEY,
	writer VARCHAR(20),
	regDate DATE,
	content VARCHAR(1000),
	articleId NUMBER,
	groupId NUMBER
);

CREATE TABLE attachment_tb(
	fileName VARCHAR(100),
	filePath VARCHAR(100),
	articleId NUMBER,
	groupId NUMBER,
	CONSTRAINT attachmentId PRIMARY KEY (fileName, filePath)
);

CREATE TABLE join_evaluation_tb(
	joinId NUMBER,
	evaluationId NUMBER,
	CONSTRAINT joinEvaluationId PRIMARY KEY (joinId, evaluationId)
);

CREATE TABLE article_report_tb(
	classifyReport VARCHAR(50),
	articleId NUMBER,
	CONSTRAINT articleReportId PRIMARY KEY (classifyReport, articleId)
);

CREATE TABLE comment_report_tb(
	classifyReport VARCHAR(50),
	commentId NUMBER,
	CONSTRAINT commentReportId PRIMARY KEY (classifyReport, commentId)
);

CREATE TABLE evaluation_tb(
	evaluationId NUMBER PRIMARY KEY,
	pros VARCHAR(1000),
	cons VARCHAR(1000),
	stars NUMBER,
	TravelerId VARCHAR(20),
	guideId VARCHAR(20)
);

CREATE TABLE report_tb(
	reportId NUMBER PRIMARY KEY,
	classifyReport VARCHAR(50),
	reportType VARCHAR(50),
	reportReason VARCHAR(1000),
	reportDate DATE,
	reportUserId VARCHAR(20),
	reportedUserId VARCHAR(20)
);

CREATE TABLE travelerHistory_tb(
	travelerHistoryId NUMBER PRIMARY KEY,
	travelArea VARCHAR(200),
	startDate DATE,
	endDate DATE,
	theme VARCHAR(50),
	guideName VARCHAR(20),
	traveledUserId VARCHAR(20)
);

CREATE TABLE guideHistory_tb(
	guideHistoryId NUMBER PRIMARY KEY,
	travelEndStatus VARCHAR(20),
	travelerName VARCHAR(20),
	travelArea VARCHAR(200),
	startDate DATE,
	endDate DATE,
	theme VARCHAR(50),
	guideId VARCHAR(20)
);

CREATE TABLE blocked_user_tb(
	id VARCHAR(20)PRIMARY KEY,
	pw VARCHAR(20),
	name VARCHAR(20),
	BirthDate VARCHAR(20),
	phoneNumber VARCHAR(11),
	email VARCHAR(50),
	accessBlockedDate DATE
);

DROP SEQUENCE travelPlan_seq;
DROP SEQUENCE join_seq;
DROP SEQUENCE group_seq;
DROP SEQUENCE group_user_seq;
DROP SEQUENCE article_seq;
DROP SEQUENCE comment_seq;
DROP SEQUENCE join_evaluation_seq;
DROP SEQUENCE article_report_seq;
DROP SEQUENCE comment_report_seq;
DROP SEQUENCE evaluation_seq;
DROP SEQUENCE report_seq;
DROP SEQUENCE travelerHistory_seq;
DROP SEQUENCE guideHistory_seq;
DROP SEQUENCE blocked_user_seq;
DROP SEQUENCE attachment_seq;

CREATE SEQUENCE travelPlan_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE join_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE group_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE group_user_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE article_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE comment_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE join_evaluation_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE article_report_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE comment_report_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE evaluation_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE report_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE travelerHistory_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE guideHistory_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE blocked_user_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE attachment_seq INCREMENT BY 1 START WITH 1;
commit;