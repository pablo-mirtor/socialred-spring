package org.socialred.data.repositories;

import java.util.List;

import org.socialred.data.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	public List<User> findByName();
}
