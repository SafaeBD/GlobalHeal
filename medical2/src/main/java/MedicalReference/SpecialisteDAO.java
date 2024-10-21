package MedicalReference;

import java.util.List;

public interface SpecialisteDAO extends IDAO<Specialiste> { 
	
	
	long create(Specialiste specialiste);
	
	Specialiste find(int id);
	
	boolean update(Specialiste specialiste);
	
	boolean delete(int id);
	
	List<Specialiste> getAll();
	
	Specialiste authenticate(int id, String password);
	
	
	
	
}
