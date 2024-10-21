package MedicalReference;

import java.util.List;

public interface PatientDAO extends IDAO<Patient> {
	
   
	
	long create(Patient patient);
	
	Patient find(int id);
	
	boolean update(Patient patient);
	
	boolean delete(int id);
	
	List<Patient> getAll();
	
	Patient authenticate(int id, String password);
	
	
}
