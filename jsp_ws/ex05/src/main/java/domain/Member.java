package domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Member {
	String name;

	@Override
	public String toString() {
		return this.name;
	}
	
	public static void main(String[] args) {
		System.out.println(new Member("jinseon"));
	}
	
}
