package MedicalReference;

public class Patient {
    private int id;
    private String nom;
    private String maladieDescription;
    private String password; 


    // Constructeur complet
    public Patient(int id, String nom, String maladieDescription) {
        this.id = id;
        this.nom = nom;
        this.maladieDescription = maladieDescription;
    }

  

    // Getters
    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getMaladieDescription() {
        return maladieDescription;
    }
    
    public String getPassword() {
        return password;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setMaladieDescription(String maladieDescription) {
        this.maladieDescription = maladieDescription;
    }

    @Override
    public String toString() {
        return "Patient [id=" + id + ", nom=" + nom + ", description de la maladie=" + maladieDescription + "]";
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
}
