package MedicalReference;

import java.util.List;
import java.util.Scanner;

public class MedicalReferenceApp {
	
	
	
  private static void checkDatabaseConnection() {
        DBSingleConnection.checkDatabaseConnection();
    }

  public static void main(String[] args) {
	  
	    checkDatabaseConnection(); 
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Bienvenue dans le système de référence médicale !");
        
        // Instanciez SpecialisteDAOImpl à l'intérieur de la méthode main
        SpecialisteDAOImpl specialisteDAO = new SpecialisteDAOImpl();
        
        // Obtenez la liste des spécialistes
        List<Specialiste> specialistes = specialisteDAO.getAll();
        
        // Affichez les détails des spécialistes dans la console
        for (Specialiste specialiste : specialistes) {
            System.out.println(specialiste.toString());
        }
        
        while(true) {
            System.out.println("Veuillez choisir :");
            System.out.println("1. Connexion en tant que patient");
            System.out.println("2. Connexion en tant que spécialiste");
            System.out.println("3. Quitter");
            
            int choix = scanner.nextInt();
            
            switch (choix) {
                case 1:
                    System.out.println("Entrez votre ID: ");
                    int patientId = scanner.nextInt();
                    System.out.println("Entrez votre mot de passe: ");
                    String patientPassword = scanner.next();
                    
                    PatientDAO patientDAO = new PatientDAOImpl();
                    Patient patient = patientDAO.authenticate(patientId, patientPassword);
                    
                    if (patient != null) {
                        System.out.println("Connexion réussie en tant que patient !");
                                                                    
                                           
                        // Implémenter des fonctionnalités supplémentaires pour le patient ici
                        
                        
                        
                        
                    } else {
                        System.out.println("Identifiants invalides.");
                    }
                    break;
                
                case 2:
                    System.out.println("Entrez votre ID: ");
                    int specialisteId = scanner.nextInt();
                    System.out.println("Entrez votre mot de passe: ");
                    String specialistePassword = scanner.next();
                    
                    SpecialisteDAO SpecialisteDAO = new SpecialisteDAOImpl();
                    Specialiste specialiste = SpecialisteDAO.authenticate(specialisteId, specialistePassword);
                    
                    if (specialiste != null) {
                        System.out.println("Connexion réussie en tant que spécialiste !");
                        
                        

                        if (specialiste != null) {
                            System.out.println("Connexion réussie en tant que spécialiste !");
                            boolean keepGoing = true;
                            while (keepGoing) {
                                System.out.println("Choisissez une action :");
                                System.out.println("2. Ajouter des commentaires sur le dossier d'un patient");
                                System.out.println("3. Recommander un traitement");
                                System.out.println("4. Déconnexion");

                                int actionChoice = scanner.nextInt();

                                switch (actionChoice) {
                                    
                                                                       

                                    case 2:
                                        System.out.println("Entrez l'ID du patient :");
                                        int patientIdentity = scanner.nextInt();
                                        scanner.nextLine();  // consume newline
                                        System.out.println("Entrez les commentaires :");
                                        String comments = scanner.nextLine();
                                        // Enregistrez ces commentaires en DB (cette partie nécessite une modification de votre DB pour inclure une table de commentaires ou une colonne supplémentaire)
                                        break;

                                    case 3:
                                        System.out.println("Entrez l'ID du patient :");
                                        int patientIdForTreatment = scanner.nextInt();
                                        scanner.nextLine();  // consume newline
                                        System.out.println("Entrez le traitement recommandé :");
                                        String treatment = scanner.nextLine();
                                        // Enregistrez ce traitement en DB pour ce patient (cette partie nécessite une modification de votre DB pour inclure une table de traitements ou une colonne supplémentaire)
                                        break;

                                    case 4:
                                        keepGoing = false;
                                        break;
                                        
                                    default:
                                        System.out.println("Choix invalide. Veuillez réessayer.");
                                }
                            }
                        } else
							System.out.println("Identifiants invalides.");
                    
                        
                        
                        
                    } else {
                        System.out.println("Identifiants invalides.");
                    }
                    break;
                    
                case 3:
                    System.out.println("Merci d'avoir utilisé notre système. À bientôt !");
                    scanner.close();
                    return;

                default:
                    System.out.println("Choix invalide. Veuillez réessayer.");
            }
        }
    }
}
