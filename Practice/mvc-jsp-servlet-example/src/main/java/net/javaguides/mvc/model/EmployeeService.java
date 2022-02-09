package net.javaguides.mvc.model;

import java.util.Arrays;
import java.util.List;

public class EmployeeService {
	public List<Employee> getEmployees(){
		return Arrays.asList(new Employee(100, "Ramesh", "Fadatare"), 
				new Employee(101, "Tony", "Stark"), 
				new Employee(102, "Tom", "Cruise"));
	}

}
