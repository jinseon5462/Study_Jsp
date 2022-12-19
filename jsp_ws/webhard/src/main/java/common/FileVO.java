package common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class FileVO {
	private int num;
	private String fname;
	private String ftime;
	private int fsize;
	private String id;
	private String pw;
}
