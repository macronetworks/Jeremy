package model;

import java.util.ArrayList;

public class Professor {
	String name;
	String faculty;
	ArrayList<Module> module;
	
	public Professor(String name, String faculty, ArrayList<Module> module){
		this.name = name;
		this.faculty = faculty;
		this.module = module;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	public ArrayList<Module> getModule() {
		return module;
	}
	public void setModule(ArrayList<Module> module) {
		this.module = module;
	}

	
	
}
