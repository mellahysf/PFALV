package ma.ensao.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma.ensao.entity.Chapitre;
import ma.ensao.entity.Matiere;
import ma.ensao.entity.User;
import ma.ensao.hibernateDAO.ChapitreDAO;
import ma.ensao.hibernateDAO.MatiereDAO;

public class ChapitreServlet extends HttpServlet{
	ArrayList liste=null;
	Map ma=null;
	User user=new User();
	Map ma1 = null;
	String cours = null;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("matiere")!=null){
			Integer matiere=Integer.parseInt(req.getParameter("matiere"));
			MatiereDAO MDAO = new MatiereDAO();
			Matiere mat = new Matiere();
			mat = MDAO.getMatiereById(matiere);
			cours = mat.getFichier();
			ChapitreDAO CDAO = new ChapitreDAO();
			List<Chapitre> listeChapitre=new ArrayList();
			liste=new ArrayList();
			listeChapitre=CDAO.selectByMatiere(matiere);
			
			
			for(Chapitre ch:listeChapitre){
				ma=new HashMap();
				ma.put("id", ch.getId());
				ma.put("chapitre",ch.getChapitre());
				ma.put("question", ch.getQuestion());
				ma.put("matiere", ch.getMatiere().getMatiere());
				ma.put("fichier", ch.getFichier());
				ma.put("archiver", ch.isArchiver());
				
				
				liste.add(ma);
				
			}
			req.setAttribute("listeChapitre", liste);
			req.setAttribute("cours", cours);
			
		}
		try {

			user = (User) req.getSession(true).getAttribute("user");

			if (user == null) {
				req.getRequestDispatcher("login.jsp").forward(req, resp);

			} else {
				
				if (user.getStatus().equals("etudiant")||user.getStatus().equals("admin")||user.getStatus().equals("prof")) {
					req.getRequestDispatcher("/WEB-INF/frontOffice/Chapitre.jsp").forward(req, resp);

				}
				
				
			}
		} catch (Exception e) {
			System.out.println("Error");

		
		}

	}
}
