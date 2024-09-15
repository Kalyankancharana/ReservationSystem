package com.wipro.ShipReservationSystem.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.wipro.ShipReservationSystem.Entities.Booking;
import com.wipro.ShipReservationSystem.Entities.ShipDetails;
import com.wipro.ShipReservationSystem.Entities.User;

public interface BookingRepository extends JpaRepository<Booking, Integer> {
	@Query("select m from Booking m where m.name= :name")
	List<Booking> getBookings(@Param("name")String name);
	
	List<Booking> findByName(String name);
	
	
}
