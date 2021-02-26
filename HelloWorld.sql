drop table prod cascade CONSTRAINTS;
drop table promtion cascade CONSTRAINTS;
drop table admin cascade CONSTRAINTS;
drop table admin_event cascade CONSTRAINTS;
drop table attraction cascade CONSTRAINTS;
drop table concept cascade CONSTRAINTS;
drop table concept_record cascade CONSTRAINTS;
drop table guide cascade CONSTRAINTS;
drop table guide_event cascade CONSTRAINTS;
drop table guide_help cascade CONSTRAINTS;
drop table help cascade CONSTRAINTS;
drop table id_info cascade CONSTRAINTS;
drop table member cascade CONSTRAINTS;
drop table notice cascade CONSTRAINTS;
drop table orders cascade CONSTRAINTS;
drop table payment cascade CONSTRAINTS;
drop table prod_detail cascade CONSTRAINTS;
drop table promotion cascade CONSTRAINTS;
drop table relationship cascade CONSTRAINTS;
drop table review cascade CONSTRAINTS;
drop table review_reply cascade CONSTRAINTS;
drop table static cascade CONSTRAINTS;
drop table wishlist cascade CONSTRAINTS;

CREATE table mymember (mem_id VARCHAR2(15 BYTE) not null,
MEM_NAME VARCHAR2(30 BYTE),
MEM_TEL VARCHAR2(14 BYTE),
MEM_ADDR VARCHAR2(90 BYTE));


COMMIT;