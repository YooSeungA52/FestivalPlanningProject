package com.fpp.dto.board;

import java.util.Date;

import lombok.Data;
@Data
public class BoardDto {

	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	
	
	
}