package beans;

public class PatientBean {
	private int id;
	private String name;
	private String age;
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private String animalSpecies;
	private String ownerName;
	private String ownerContactNum;
	private String password;

	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAnimalSpecies() {
		return animalSpecies;
	}
	public void setAnimalSpecies(String animalSpecies) {
		this.animalSpecies = animalSpecies;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerContactNum() {
		return ownerContactNum;
	}
	public void setOwnerContactNum(String ownerContactNum) {
		this.ownerContactNum = ownerContactNum;
	}
	
	
}