create table suggest (
  id              bigint(20)    not null auto_increment    comment 'ID',
  openid            varchar(64)   default ''                 comment 'openid',
  wxid           varchar(64)   default 'DEFAULT'          comment '微信',
  nickname     varchar(50)  default ''                 comment '昵称',
  avatar      varchar(20)   default ''                comment '头像',
  suggest      varchar(64)   default 'DEFAULT'          comment '建议',
  create_time         datetime                                 comment '创建时间',
  primary key (id)
) engine=innodb auto_increment=100 comment = '建议';

insert into suggest values(1, '第一个用户', 'dfafafds', '帅哥','fafafa', '好啊', sysdate());
