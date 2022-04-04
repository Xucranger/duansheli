create table plushistory (
  id              bigint(20)    not null auto_increment    comment 'ID',
  openid            varchar(64)   default ''                 comment 'openid',
  jifen           varchar(64)   default 'DEFAULT'          comment '积分',
  weight     			varchar(64)  		default ''                 comment '衣物重量',
  leixing              char(1)       default '0'                comment '类型（0春 1秋）',
machine				varchar(64) 	default ''  		comment'机器编号',
  create_time         datetime                                 comment '创建时间',
  loc              varchar(50)  default ''                 comment '地址',
  primary key (id)
) engine=innodb auto_increment=100 comment = '增加积分';

insert into plushistory values(1, '第一个用户', '122', '42.0','1', '1', sysdate(), 'bcbxb');
