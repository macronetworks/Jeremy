package src.model;

import java.util.ArrayList;

public class ModuleFeedback {
	String username;
	String date;
	String course;
        int yearTaken1;
        int yearTaken2;
        int sem;
        String comment;
        double helpRating;
        double easyRating;
        double workLoadRating;
        double overallRating;

    public ModuleFeedback(String username, String date, String course, int yearTaken1, int yearTaken2, int sem, String comment, double helpRating, double easyRating, double workLoadRating, double overallRating) {
        this.username = username;
        this.date = date;
        this.course = course;
        this.yearTaken1 = yearTaken1;
        this.yearTaken2 = yearTaken2;
        this.sem = sem;
        this.comment = comment;
        this.helpRating = helpRating;
        this.easyRating = easyRating;
        this.workLoadRating = workLoadRating;
        this.overallRating = overallRating;
    }

    public String getUsername() {
        return username;
    }

    public String getDate() {
        return date;
    }

    public String getCourse() {
        return course;
    }

    public int getYearTaken1() {
        return yearTaken1;
    }

    public int getYearTaken2() {
        return yearTaken2;
    }

    public int getSem() {
        return sem;
    }

    public String getComment() {
        return comment;
    }

    public double getHelpRating() {
        return helpRating;
    }

    public double getEasyRating() {
        return easyRating;
    }

    public double getWorkLoadRating() {
        return workLoadRating;
    }

    public double getOverallRating() {
        return overallRating;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public void setYearTaken1(int yearTaken1) {
        this.yearTaken1 = yearTaken1;
    }

    public void setYearTaken2(int yearTaken2) {
        this.yearTaken2 = yearTaken2;
    }

    public void setSem(int sem) {
        this.sem = sem;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setHelpRating(double helpRating) {
        this.helpRating = helpRating;
    }

    public void setEasyRating(double easyRating) {
        this.easyRating = easyRating;
    }

    public void setWorkLoadRating(double workLoadRating) {
        this.workLoadRating = workLoadRating;
    }

    public void setOverallRating(double overallRating) {
        this.overallRating = overallRating;
    }
	

	
	
}
