package MedicalReference;

import java.util.List;

public interface IDAO<T> {
    long create(T obj);
    T find(int id);
    boolean update(T obj);
    boolean delete(int id);
    List<T> getAll();
}
