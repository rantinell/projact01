package com.team5.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long mi_num;
	private Long g_num;
	private String mi_title;
	private int condition;
	private String thumbnail;
	private Date regDate;
	private Date updateDate;
}
