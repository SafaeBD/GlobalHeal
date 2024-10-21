package MedicalReference;

public class Traitement {
    private int id;
    private String nom;
    private double prix;
    private String paysDispensateur;

    // Constructeur complet
    public Traitement(int id, String nom, double prix, String paysDispensateur) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
        this.paysDispensateur = paysDispensateur;
    }

    // Constructeur sans l'ID (utile pour la création avant d'avoir un ID généré)
    public Traitement(String nom, double prix, String paysDispensateur) {
        this.nom = nom;
        this.prix = prix;
        this.paysDispensateur = paysDispensateur;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public double getPrix() {
        return prix;
    }

    public String getPaysDispensateur() {
        return paysDispensateur;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public void setPaysDispensateur(String paysDispensateur) {
        this.paysDispensateur = paysDispensateur;
    }

    // Méthode toString pour une représentation sous forme de chaîne de l'objet Traitement
    @Override
    public String toString() {
        return "Traitement [id=" + id + ", nom=" + nom + ", prix=" + prix + ", paysDispensateur=" + paysDispensateur + "]";
    }
}
