package MedicalReference;

import java.sql.Connection;

public abstract class AbstractDAOA {
	
    protected Connection connection = DBSingleConnection.getConnection();
}
