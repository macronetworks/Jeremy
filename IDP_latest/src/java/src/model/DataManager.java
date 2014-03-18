package model;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class DataManager {
	
	public DataManager(){
	}
	
	
	public static ArrayList<Professor> readProf() {
		String csvProfessor = "C:/professor.csv";
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
		ArrayList<Professor> resultList = new ArrayList<Professor>();
		ArrayList<Module> modList = readModule();
		ArrayList<Module> profMod = new ArrayList<Module>();
		//read professor
		try {

			br = new BufferedReader(new FileReader(csvProfessor));
			//skip first line
			br.readLine();
			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] professorLine = line.split(cvsSplitBy);
				String[] profModLine = professorLine[2].split(cvsSplitBy);
				
				for(int i=0;i<profModLine.length;i++){
					Module modToAdd = searchMod(profModLine[i],modList);
					if(modToAdd != null){
						profMod.add(modToAdd);
					}
				}
				
				Professor p = new Professor(professorLine[0],professorLine[1],profMod);

				resultList.add(p);
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return resultList;
	}// end readFile
	
	public static ArrayList<Module> readModule() {
		String csvModule = "C:/module.csv";
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
		ArrayList<Module> resultList = new ArrayList<Module>();
		
		//read professor
		try {
			br = new BufferedReader(new FileReader(csvModule));
			//skip first line
			br.readLine();
			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] modLine = line.split(cvsSplitBy);
				
				Module mod = new Module(modLine[0],modLine[1]);

				resultList.add(mod);
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return resultList;
	}// end readFile
	
	public static Module searchMod(String name, ArrayList<Module> modList){
		for(int i=0;i<modList.size();i++){
			Module tempMod = modList.get(i);
			if(tempMod.getName().equals(name)){
				return tempMod;
			}
		}
		return null;
	}
	
	public static Professor searchProf(String name, ArrayList<Professor> profList){
		for(int i=0;i<profList.size();i++){
			Professor tempProf = profList.get(i);
			if(tempProf.getName().equals(name)){
				return tempProf;
			}
		}
		return null;
	}
	
}//end class
