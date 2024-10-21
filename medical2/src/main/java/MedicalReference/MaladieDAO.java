package MedicalReference;

import java.util.List;

public interface MaladieDAO extends IDAO<Maladie> {
	
	
	long create(Maladie maladie);
	
	Maladie find(int id);
	
	boolean update(Maladie maladie);
	
	boolean delete(int id);
	
	List<Maladie> getAll();
	
	
}