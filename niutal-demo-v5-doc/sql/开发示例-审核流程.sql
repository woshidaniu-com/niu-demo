-- Create table
create table niutal_DEMO_QJB
(
  id             VARCHAR2(32) not null,
  proposer       VARCHAR2(32) not null,
  number_of_days NUMBER not null,
  start_date     DATE not null,
  end_date       DATE not null,
  motivation     VARCHAR2(4000),
  audit_status   NUMBER,
  process_id     VARCHAR2(32),
  type           NUMBER not null,
  create_time    TIMESTAMP(6) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table niutal_DEMO_QJB
  add constraint niutal_DEMO_QJB_PK primary key (ID);

-- Create table
create table niutal_DEMO_QJSZB
(
  proc    VARCHAR2(64),
  kgsz    VARCHAR2(2),
  version VARCHAR2(64)
);
-- Add comments to the columns 
comment on column niutal_DEMO_QJSZB.proc
  is '请假流程设置';
comment on column niutal_DEMO_QJSZB.kgsz
  is '开关设置';
comment on column niutal_DEMO_QJSZB.version
  is '版本';




delete from niutal_xtgl_czdmb where cddm in ('apply','submit','cancel','trace','sh');

insert into niutal_xtgl_czdmb values ('apply', '申请', 'glyphicon glyphicon-cog');
insert into niutal_xtgl_czdmb values ('submit', '提交', 'glyphicon glyphicon-cog');
insert into niutal_xtgl_czdmb values ('cancel', '撤销', 'glyphicon glyphicon-cog');
insert into niutal_xtgl_czdmb values ('trace', '流程跟踪', 'glyphicon glyphicon-cog');
insert into niutal_xtgl_czdmb values ('sh', '审核', 'glyphicon glyphicon-cog');

delete from niutal_xtgl_jsgnmkdmb where gnmkdm like 'N04%';

insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N04','请假流程示例','N','','1'); 
insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N040104','参数设置','N04','/vocation/setting.zf','1'); 
insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N040101','申请','N04','/vocation/sqList.zf','2'); 
insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N040102','待办','N04','/vocation/dbList.zf','3'); 
insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N040105','已办','N04','//vocation/ybList.zf','4'); 


delete from niutal_xtgl_gnmkczb where gnmkdm='N040101';
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040101','apply','N040101_apply','','1');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040101','submit','N040101_submit','','2');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040101','cancel','N040101_cancel','','3');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040101','trace','N040101_trace','','4');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040101','#','N040101_#','','0');

delete from niutal_xtgl_gnmkczb where gnmkdm='N040102';
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040102','trace','N040102_trace','','2');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040102','sh','N040102_sh','','1');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040102','#','N040102_#','','0');

delete from niutal_xtgl_gnmkczb where gnmkdm='N040104';
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040104','#','N040104_#','','0');

delete from niutal_xtgl_gnmkczb where gnmkdm='N040105';
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040105','trace','N040105_trace','','1');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040105','cancel','N040105_cancel','','2');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N040105','#','N040105_#','','0');


delete from niutal_xtgl_jsgnmkczb where gnczid like 'N0401%';
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040101_apply'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040101_submit'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040101_cancel'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040101_trace'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040101_#');

insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040102_trace'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040102_sh'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040102_#');

insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_#');

insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040105_trace'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040105_cancel'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N040105_#');
commit;