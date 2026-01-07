package edu.cjc.sma.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.sma.app.model.Student;
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

}
