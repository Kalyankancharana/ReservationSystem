package com.wipro.ShipReservationSystem.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ShipReservationSystem.Entities.Booking;
import com.wipro.ShipReservationSystem.Entities.ShipDetails;
import com.wipro.ShipReservationSystem.Entities.User;
import com.wipro.ShipReservationSystem.Repositories.BookingRepository;
import com.wipro.ShipReservationSystem.Repositories.ShipRepository;
@Service

public class ShipDetailsService {
	@Autowired
	private ShipRepository shipRepo;
	@Autowired
	private BookingRepository bookingRepo;
	
	public List<ShipDetails> findAll()
	{
		return shipRepo.findAll();
	}
	
	
	public List<ShipDetails> findBySourceAndDestination(String source,String destination)
	{
		return shipRepo.findBySourceAndDestination(source, destination);
	}
	
	
	public Booking reservation(int sid,int pid,int seats,String name,String passname) throws Exception {
		ShipDetails ship=shipRepo.findById(sid).get();
		int available=ship.getAvailable();
		
		if(seats<=available)
		{
			Booking booking=new Booking(); 
			booking.setShipname(ship.getShipname());
			booking.setSid(sid);
			booking.setDateofjourney(ship.getDateofjourney());
			booking.setTime(ship.getTime());
			booking.setPassengername(passname);
			booking.setSeats(seats);
			booking.setName(name);
			booking.setPid(pid);
			booking.setSource(ship.getSource());
			booking.setDestination(ship.getDestination());
			booking.setPrice(ship.getCost());
			bookingRepo.save(booking);
			ship.setAvailable(available-seats);
			shipRepo.save(ship);
			return booking;
		}
		else {
			
			return null;
		}
		
	}
	
	
	public ShipDetails getShipDetails(int id)
	{
		ShipDetails ship=shipRepo.findById(id).get();
		return ship;
	}
	
	/*public Booking findReservationById(int id)
	{
		return bookingRepo.findById(id).orElse(null);
	}*/
	
}
