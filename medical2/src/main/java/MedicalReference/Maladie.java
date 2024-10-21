package MedicalReference;

public class Maladie {
    private int id;
    private String description;
    private String traitementRecommande;

    // Constructeur complet
    public Maladie(int id, String description, String traitementRecommande) {
        this.id = id;
        this.description = description;
        this.traitementRecommande = traitementRecommande;
    }

    // Constructeur sans id (utile lors de la création d'une nouvelle maladie avant son insertion dans la base de données)
    public Maladie(String description, String traitementRecommande) {
        this.description = description;
        this.traitementRecommande = traitementRecommande;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public String getTraitementRecommande() {
        return traitementRecommande;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setTraitementRecommande(String traitementRecommande) {
        this.traitementRecommande = traitementRecommande;
    }

    // Méthode toString pour une représentation sous forme de chaîne de l'objet Maladie
    @Override
    public String toString() {
        return "Maladie [id=" + id + ", description=" + description + ", traitement recommandé=" + traitementRecommande + "]";
    }
}
