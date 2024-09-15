package com.wipro.ShipReservationSystem.Repositories;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;

import com.wipro.ShipReservationSystem.Entities.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	 User findByEmail(String email);
	 
	 User findByUsername(String username);
	 

	 
	 @Query("select m from User m where m.username= :username and m.password= :password")
	 User findByUsernameAndPassword(String username,String password);
	  

}
