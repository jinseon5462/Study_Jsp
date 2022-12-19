package common;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int num;
	private String title;
	private String content;
	private String id;
	private Date postdate;
	private int visitcount;
}
