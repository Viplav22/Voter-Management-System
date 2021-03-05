package beans;

// public and packaged class
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Period;

import dao.CandidateDaoImpl;
import pojos.Candidate;

public class CandidateBean {
	// Java bean can store clnt's info : registration detials
	private String name, party, dob;
	// clnt's conversational state(req params coming from clnt)

	// Java Bean manages candidate Dao : add a ref
	private CandidateDaoImpl candidateDao;

	// add a property to store candidate reg status
	private String message;

	// def arg-less constr
	public CandidateBean() throws ClassNotFoundException, SQLException {
		System.out.println("in candidate bean constr");
		// create candidate dao instance
		candidateDao = new CandidateDaoImpl();
		System.out.println("candidate bean created");
	}

	// getters and setters for the JB properties
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParty() {
		return party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public CandidateDaoImpl getCandidateDao() {
		return candidateDao;
	}

	public void setCandidateDao(CandidateDaoImpl candidateDao) {
		this.candidateDao = candidateDao;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	// add B.L methods : login and validation
	// for candidate validation
	public String validateNRegisterCandidate() throws SQLException {
		System.out.println("Candidate bean reg candidate : " + name + " " + party + " " + dob);

		// getting the age of the candidate
		// parse dob from string --> LocalDate
		LocalDate dateOfBirth = LocalDate.parse(dob);
		int age = Period.between(dateOfBirth, LocalDate.now()).getYears();
		System.out.println("Age : " + age);
		if (age > 35) {
			// candidate validated --> invoke Dao's method : insert record
			message = candidateDao.registerCandidate(new Candidate(name, party));
			return "admin_status";
		}
		// age validation failed
		message = "Candidate's age is invalid !!!";
		return "candidate_register";
	}
}
