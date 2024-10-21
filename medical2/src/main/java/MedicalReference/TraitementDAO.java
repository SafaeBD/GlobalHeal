package MedicalReference;

import java.util.List;

public interface TraitementDAO extends IDAO<Traitement> { 
	
	long create(Traitement traitement);
	
	Traitement find(int id);
	
	boolean update(Traitement traitement);
	
	boolean delete(int id);
	
	List<Traitement> getAll();
	
	
}
