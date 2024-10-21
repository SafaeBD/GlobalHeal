package MedicalReference;

public class Specialiste {
    private int id;
    private String nom;
    private String specialite;
    private String pays;
    private String password; 
    private String email;
    private String prenom;


    // Constructeur complet
    public Specialiste(int id, String nom, String specialite, String pays) {
        this.id = id;
        this.nom = nom;
        this.specialite = specialite;
        this.pays = pays;
    }

    // Constructeur sans ID (pour la création)
    public Specialiste(String nom, String specialite, String pays) {
        this.nom = nom;
        this.specialite = specialite;
        this.pays = pays;
    }

    // Getters
    public int getId() {
        return id;
    }
    
    public String getprenom() {
        return prenom;
    }
    
    public String getemail() {
        return email;
    }   

    public String getNom() {
        return nom;
    }

    public String getSpecialite() {
        return specialite;
    }

    public String getPays() {
        return pays;
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
    
    public void setprenom(String prenom) {
        this.prenom = prenom;
    }
    
    public void setemail(String email) {
        this.email = email;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }
    

    // Méthode toString pour une représentation sous forme de chaîne de l'objet Specialiste
    @Override
    public String toString() {
        return "Specialiste [id=" + id + ", nom=" + nom + ", specialite=" + specialite + ", pays=" + pays + "]";
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
}
