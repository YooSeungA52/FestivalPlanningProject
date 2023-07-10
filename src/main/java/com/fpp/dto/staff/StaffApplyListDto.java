package com.fpp.dto.staff;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor

@Data
public class StaffApplyListDto {
	int fno;
	String festivalName;
	String addressEvent;
	String place;
	String id;
	String supportPeriodStart;
	String supportPeriodEnd;
	String codeName;
	String name;
	String birth;
	String telNumber;
	String email;
}
