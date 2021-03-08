package com.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReBookVO {
	private String reTitle;
	private String reContents;
	private String reIsbn;
	private String reDateTime;
	private String reAuthors1;
	private String reAuthors2;
	private String reAuthors3;
	private String rePublisher;
	private String retranslators1;
	private String retranslators2;
	private String retranslators3;
	private String rePrice;
	private String reSalePrice;
	private String reThumbnaile;
	private String reStatus;
}
