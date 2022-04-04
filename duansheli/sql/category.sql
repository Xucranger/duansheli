CREATE TABLE category (
    id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    category VARCHAR(64) DEFAULT '' COMMENT '分类Id',
    catename VARCHAR(64) DEFAULT 'DEFAULT' COMMENT '分类名字',
    miaoshu VARCHAR(64) DEFAULT '' COMMENT '描述',
    create_time DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
)  ENGINE=INNODB AUTO_INCREMENT=100 COMMENT='商品分类';

insert into category values(1, '1', '吃的', '好',sysdate());
