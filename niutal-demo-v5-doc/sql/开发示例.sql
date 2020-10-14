insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N02','开发示例','N','','1'); 
insert into niutal_xtgl_jsgnmkdmb(gnmkdm,gnmkmc,fjgndm,dyym,xssx) values ('N020103','高级查询','N02','/gqt/tyxx/gjcxDemo.zf','1'); 

delete from niutal_xtgl_gnmkczb where gnmkdm='N020103';
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N020103','zj','N020103_zj','tyxx:zj','1');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N020103','xg','N020103_xg','tyxx:xg','2');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N020103','sc','N020103_sc','tyxx:sc','3');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N020103','ck','N020103_ck','tyxx:ck','4');
insert into niutal_xtgl_gnmkczb(gnmkdm,czdm,gnczid,qxdm,xssx) values ('N020103','#','N020103_#','tyxx:cx','0');

delete from niutal_xtgl_jsgnmkczb where gnczid like 'N020103%';
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_zj'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_xg'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_sc'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_ck'); 
insert into niutal_xtgl_jsgnmkczb(jsdm,gnczid) values ('admin','N020103_#');

commit;

