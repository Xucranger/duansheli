CREATE TABLE shoplist (
    id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    category VARCHAR(64) DEFAULT '' COMMENT '分类Id',
    shopname VARCHAR(64) DEFAULT 'DEFAULT' COMMENT '名字',
    miaoshu VARCHAR(64) DEFAULT '' COMMENT '描述',
    picture varchar(255) default'' comment'图片',
    kucun varchar(63) default '' comment '库存',
    price varchar(64)  default '' comment '价格',
    create_time DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
)  ENGINE=INNODB AUTO_INCREMENT=100 COMMENT='商品列表';

insert into shoplist values(1, '1', '吃的', '好','dsfa','200','456',sysdate());
