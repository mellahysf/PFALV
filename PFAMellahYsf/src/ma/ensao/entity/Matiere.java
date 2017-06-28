package ma.ensao.entity;

public class Matiere {

	private Integer id;
	private String matiere;
	private String description;
	private String icon;
	private String fichier ; 
	private boolean archiver;
	private Integer editeur;
	public Matiere() {
		super();
		
	}
	public Matiere(Integer id, String matiere, String description, String icon, String fichier, boolean archiver,
			Integer editeur) {
		super();
		this.id = id;
		this.matiere = matiere;
		this.description = description;
		this.icon = icon;
		this.fichier = fichier;
		this.archiver = archiver;
		this.editeur = editeur;
	}
	public String getFichier() {
		return fichier;
	}
	public void setFichier(String fichier) {
		this.fichier = fichier;
	}

	
	
	
	public boolean isArchiver() {
		return archiver;
	}
	public void setArchiver(boolean archiver) {
		this.archiver = archiver;
	}
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMatiere() {
		return matiere;
	}
	public void setMatiere(String matiere) {
		this.matiere = matiere;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public Integer getEditeur() {
		return editeur;
	}
	public void setEditeur(Integer editeur) {
		this.editeur = editeur;
	}
	
	
}
