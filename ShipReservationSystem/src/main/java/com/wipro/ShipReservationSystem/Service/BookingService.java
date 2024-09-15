package com.wipro.ShipReservationSystem.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ShipReservationSystem.Entities.Booking;
import com.wipro.ShipReservationSystem.Entities.ShipDetails;
import com.wipro.ShipReservationSystem.Repositories.BookingRepository;
import com.wipro.ShipReservationSystem.Repositories.ShipRepository;

@Service
public class BookingService {
	@Autowired
	private BookingRepository bookingRepo;
	
	@Autowired
	private ShipRepository shipRepo;
	
	public List<Booking> Tickets(String name)
	{
		List<Booking> bookings=bookingRepo.getBookings(name);
		
		return bookings;
	}
	
	
	public Booking Eticket(int bookingid)
	{
		Booking booking=bookingRepo.findById(bookingid).get();
		return booking;
	}
	
	
	public boolean cancel(int bookingid) throws Exception {
		Booking booking=bookingRepo.findById(bookingid).get();
		
		int ship_id=booking.getSid();
		ShipDetails ship=shipRepo.findById(ship_id).get();
			int cancelledSeats=booking.getSeats();
			int available=ship.getAvailable()+cancelledSeats;
			ship.setAvailable(available);
			shipRepo.save(ship);
			bookingRepo.deleteById(bookingid);
			return true;
		
}
}
