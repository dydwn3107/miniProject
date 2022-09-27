package co.community.yedam.projectStudy.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectStudyVO {
/*
	"PROJECT_STUDY_ID" NUMBER NOT NULL,
	"MEMBER_ID"	VARCHAR2(50) NOT NULL,
	"PROJECT_STUDY_TYPE" VARCHAR2(20),
	"PROJECT_STUDY_ONOFFLINE" VARCHAR2(20) ,
	"PROJECT_STUDY_PERSON_NUM" NUMBER,
	"PROJECT_STUDY_START" DATE,
	"PROJECT_STUDY_TEL" VARCHAR2(20),
	"PROJECT_STUDY_PERIOD" NUMBER,
	"PROJECT_STUDY_LANGUAGE" VARCHAR2(20)
	"PROJECT_STUDY_LANGUAGE" NUMBER	
 */
	private int projectStudyId;
	private String memberId;
	private String projectStudyType;
	private String projectStudyonoffline;
	private int projectStudyPersonNum;
	private Date projectStudyStart;
	private String projectStudyTel;
	private int projectStudyPeriod;
	private String projectStudyLanguage;
	private int projectStudyHit;
	private String projectStudyTitle;
	private String projectStudySubject;
}
