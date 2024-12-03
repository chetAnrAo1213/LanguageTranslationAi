package com.boot.Models;

public class UsersRequirements {

	String  InputLanguage;
	String  OutputLanguage;
	String InputCode;
	String Aimodel;
	public UsersRequirements() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UsersRequirements(String inputLanguage, String outputLanguage, String inputCode, String aimodel) {
		super();
		InputLanguage = inputLanguage;
		OutputLanguage = outputLanguage;
		InputCode = inputCode;
		Aimodel = aimodel;
	}
	public String getInputLanguage() {
		return InputLanguage;
	}
	public void setInputLanguage(String inputLanguage) {
		InputLanguage = inputLanguage;
	}
	public String getOutputLanguage() {
		return OutputLanguage;
	}
	public void setOutputLanguage(String outputLanguage) {
		OutputLanguage = outputLanguage;
	}
	public String getInputCode() {
		return InputCode;
	}
	public void setInputCode(String inputCode) {
		InputCode = inputCode;
	}
	public String getAimodel() {
		return Aimodel;
	}
	public void setAimodel(String aimodel) {
		Aimodel = aimodel;
	}
	@Override
	public String toString() {
		return "UsersRequirements [InputLanguage=" + InputLanguage + ", OutputLanguage=" + OutputLanguage
				+ ", InputCode=" + InputCode + ", Aimodel=" + Aimodel + "]";
	}
	
	

}
