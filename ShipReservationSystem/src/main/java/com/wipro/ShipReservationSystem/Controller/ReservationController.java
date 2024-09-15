package com.wipro.ShipReservationSystem.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.ShipReservationSystem.Entities.Booking;
import com.wipro.ShipReservationSystem.Entities.Login;
import com.wipro.ShipReservationSystem.Entities.ShipDetails;
import com.wipro.ShipReservationSystem.Entities.User;
import com.wipro.ShipReservationSystem.Service.BookingService;
import com.wipro.ShipReservationSystem.Service.ShipDetailsService;
import com.wipro.ShipReservationSystem.Service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ReservationController {
	@Autowired
	private UserService service;
	@Autowired 
	private ShipDetailsService shipDetailsService;
	@Autowired
	private BookingService bookingService;
	
	@GetMapping("/book/{ship_id}")
	public String getticket(@PathVariable("ship_id") int id,Model m,HttpSession session)
	{
		Login user=(Login) session.getAttribute("msg");
		if(user!=null)
		{
		String name12=user.getUsername();
		m.addAttribute("name123", name12);
		
		m.addAttribute("name1", name12);
		User user1=service.getcurrentUser(name12);
		
		int id1=user1.getId();
		m.addAttribute("id1", id1);
		System.out.println(id);
		ShipDetails shipDetails=shipDetailsService.getShipDetails(id);
		System.out.println(shipDetails);
		m.addAttribute("ships12", shipDetails);
		
		return "reservation";
		} else
			return "login";
	}
	
	
	@RequestMapping("/booking/{id}")

	public ModelAndView bookTicket(HttpSession session,@PathVariable("id")int sid,@RequestParam("seats")int seats,@RequestParam("passengername")String passname,Model m) throws Exception 
	{
		ModelAndView md=new ModelAndView("login");
		Login user=(Login) session.getAttribute("msg");
		String name12=user.getUsername();
		User user1=service.getcurrentUser(name12);
		int id=user1.getId();
		m.addAttribute("name123", name12);
		Booking booking=shipDetailsService.reservation(sid,id, seats,name12,passname);

		if(user!=null&&booking!=null)
		{
		
		int bookingid=booking.getBookingid();
		m.addAttribute("bid", bookingid);
		md.setViewName("payment");
		}
		if(booking==null)
		{
			m.addAttribute("msg","seats are not available");
			md.setViewName("failed");
		}
		
			return md;
		
	}
	
	
	@RequestMapping(value ="/tickets/{name}",method = RequestMethod.GET)
	public String bookings(@PathVariable("name")String name,Model m,HttpSession session)
	{
		Login user=(Login) session.getAttribute("msg");
		System.out.println(name);
		
		List<Booking> bookings=bookingService.Tickets(name);
		m.addAttribute("bookings", bookings);
		if(user!=null)
		{
			return "tickets";
		}
		else {
		return "login";
		}
	}
	
	
	@RequestMapping(value ="/view/{bookingid}",method = RequestMethod.GET)
	public String ticket(@PathVariable("bookingid")int bookingid,Model m,HttpSession session)
	{
		Login user=(Login) session.getAttribute("msg");
		System.out.println(bookingid);
		Booking booking=bookingService.Eticket(bookingid);
		m.addAttribute("booking", booking);
		if(user!=null)
		{
		return "viewtickey";
		}
		else {
			return "login";
		}
	}
	
	
	@RequestMapping(value ="/cancel/{bookingid}",method = RequestMethod.GET)
	public String cancel(@PathVariable("bookingid")int bookingid,Model m,HttpSession session) throws Exception
	{
		Login user=(Login) session.getAttribute("msg");
		String name=user.getUsername();
		m.addAttribute("message","cancelled succefully");
		boolean status=bookingService.cancel(bookingid);
		List<Booking> bookings=bookingService.Tickets(name);
		m.addAttribute("bookings", bookings);
		if(status && user!=null)
		{
			return "tickets";
		}
		else {
			
			return "login";
		}
	}
	
	
	@RequestMapping(value="/download/{bookid}",method = RequestMethod.GET)
	public String download(@PathVariable("bookid") int bookid,Model m,HttpSession session)
	{
		Login user=(Login) session.getAttribute("msg");
		Booking booking=bookingService.Eticket(bookid);
		m.addAttribute("val", booking);
		if(user!=null)
		{
		return "download1";
		}
		else {
			return "login";
		}		
	}
	
	
}
