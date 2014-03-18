package model;

import java.util.ArrayList;

public class Module {
	String name;
	String faculty;
	ArrayList<Professor> professor;

	public Module(String name, String faculty, ArrayList<Professor> professor) {
		this.name = name;
		this.faculty = faculty;
		this.professor = professor;
	}
	
	public Module(String name, String faculty) {
		this.name = name;
		this.faculty = faculty;
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

	public ArrayList<Professor> getProfessor() {
		return professor;
	}

	public void setProfessor(ArrayList<Professor> professor) {
		this.professor = professor;
	}
	
	
}
