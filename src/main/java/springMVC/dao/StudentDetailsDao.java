package springMVC.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import springMVC.model.StudentDetails;

@Repository
public class StudentDetailsDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public int saveStudentDetails(StudentDetails studentDetatils) {
		return (int) this.hibernateTemplate.save(studentDetatils);
	}

}
