package com.wipro.ShipReservationSystem.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.ShipReservationSystem.Entities.ShipDetails;

public interface ShipRepository extends JpaRepository<ShipDetails, Integer> {
	List<ShipDetails> findBySourceAndDestination(String source,String destiantion);

}
