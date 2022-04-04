CREATE TABLE dehistory (
    id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    openid VARCHAR(64) DEFAULT '' COMMENT 'openid',
    jifen VARCHAR(64) DEFAULT 'DEFAULT' COMMENT '积分',
    shopid VARCHAR(64) DEFAULT '' COMMENT '购买id',
    times VARCHAR(64) DEFAULT '' COMMENT '购买次数',
    create_time DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
)  ENGINE=INNODB AUTO_INCREMENT=100 COMMENT='减少积分';

insert into dehistory values(1, '第一个用户', '20', '3','2', sysdate());
