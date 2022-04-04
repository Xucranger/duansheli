create table userinfo (
  id              bigint(20)    not null auto_increment    comment 'ID',
  openid            varchar(64)   default ''                 comment 'openid',
  wxid           varchar(64)   default 'DEFAULT'          comment '微信',
  nickname     varchar(50)  default ''                 comment '昵称',
  avatar      varchar(20)   default ''                comment '头像',
  sex              char(1)       default '0'                comment '性别（0女 1男）',

  create_time         datetime                                 comment '创建时间',
  loc              varchar(50)  default ''                 comment '地址',
  primary key (id)
) engine=innodb auto_increment=100 comment = '个人信息';

insert into sys_job values(1, '第一个用户', 'dfafafds', '帅哥','fafafa', '1', sysdate(), 'bcbxb');
