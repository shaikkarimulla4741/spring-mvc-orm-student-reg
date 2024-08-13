package springMVC.model;

import java.util.List;

//import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.persistence.OneToOne;
import javax.persistence.Transient;

@Entity
@Table(name = "student_details")
public class StudentDetails {

	private String name;

	@Id
	private int id;
	private String email;
	private String dob;

	@ElementCollection
	@CollectionTable(name = "student_courses", joinColumns = @JoinColumn(name = "student_id"))
	@Column(name = "course")
	private List<String> course;

	private String gender;

	@Embedded
	private Address address;

	public StudentDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudentDetails(String name, int id, String email, String dob, List<String> course, String gender,
			Address address) {
		super();
		this.name = name;
		this.id = id;
		this.email = email;
		this.dob = dob;
		this.course = course;
		this.gender = gender;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public List<String> getCourse() {
		return course;
	}

	public void setCourse(List<String> course) {
		this.course = course;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "StudentDetails [name=" + name + ", id=" + id + ", email=" + email + ", dob=" + dob + ", course="
				+ course + ", gender=" + gender + ", address=" + address + "]";
	}

}
