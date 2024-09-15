package com.wipro.ShipReservationSystem.Controller;

import java.util.List;

import org.apache.tomcat.util.security.MD5Encoder;
import org.aspectj.weaver.NewConstructorTypeMunger;
import org.hibernate.engine.query.spi.ReturnMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.ShipReservationSystem.Entities.Booking;
import com.wipro.ShipReservationSystem.Entities.Login;
import com.wipro.ShipReservationSystem.Entities.ShipDetails;
import com.wipro.ShipReservationSystem.Service.ShipDetailsService;

import jakarta.servlet.http.HttpSession;
@Controller
public class ShipDetailsController {
	@Autowired
	 ShipDetailsService shipService;
	
	/*@GetMapping("/search")
	public String ships(Model m)
	{
		m.addAttribute("ships12", shipService.findAll());
		return "search";
	}*/
	
	@RequestMapping("/ships")
	public ModelAndView getShips(@ModelAttribute("ship")ShipDetails shipDetails,Model m,HttpSession session)
	{
		ModelAndView md=new ModelAndView();
		Login user=(Login)session.getAttribute("msg");
		if(user!=null)
		{
		String name12=user.getUsername();
		m.addAttribute("name123", name12);
		
		List<ShipDetails> shipsDetails=shipService.findBySourceAndDestination(shipDetails.getSource(),shipDetails.getDestination());
		System.out.println(shipDetails);
		m.addAttribute("ships", shipsDetails);
		
		
		md.setViewName("ships");
		}
		else {
			
			md.setViewName("login");
		}
		return md;
	}
	
	
	@RequestMapping("/viewall")
	public String allShips(Model m,HttpSession session)
	 
	{
		
		Login user=(Login)session.getAttribute("msg");
		if(user!=null) {
			String name12=user.getUsername();

			m.addAttribute("name123", name12);

		List<ShipDetails>ships=shipService.findAll();
		m.addAttribute("ships", ships);
		return "viewships";
		}
		else {
			return "login";
		}
	}
	
	
	
}
