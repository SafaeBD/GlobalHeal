package WebServ;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;

import MedicalReference.Specialiste;
import MedicalReference.SpecialisteDAO;
import MedicalReference.SpecialisteDAOImpl;
import jakarta.servlet.ServletException;



@WebServlet(name = "View6serve", urlPatterns = {"/View6serve"})


public class SERVLET extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            SpecialisteDAO specialisteDAO = new SpecialisteDAOImpl();
            List<Specialiste> specialistes = specialisteDAO.getAll();

            // Mettez les spécialistes dans la session
            HttpSession session = request.getSession();
            session.setAttribute("specialistes", specialistes);
            System.out.println("Nombre de spécialistes dans la session : " + specialistes.size());


            // Transférez le contrôle à la page JSP
            request.getRequestDispatcher("View6.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace(new PrintWriter(response.getWriter()));
        }
    }



    
}
