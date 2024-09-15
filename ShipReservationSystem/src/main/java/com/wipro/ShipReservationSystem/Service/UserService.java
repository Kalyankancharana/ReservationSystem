package com.wipro.ShipReservationSystem.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.wipro.ShipReservationSystem.Entities.Login;
import com.wipro.ShipReservationSystem.Entities.User;
import com.wipro.ShipReservationSystem.Repositories.UserRepository;

import jakarta.validation.constraints.Email;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	
	
	
	public User toRegister(User user) throws Exception
	{
		User user1=userRepository.findByEmail(user.getEmail());
		User user2=userRepository.findByUsername(user.getUsername());
		if(user1==null&&user2==null)
		{
			
			return userRepository.save(user);
			
		}
		
		else if(user1!=null){
			return null;
		}
		else if(user2!=null)
		{
			return null;
		}
		else {
			return null;
		}
		
	}
	
	public User toLogin(Login login) throws Exception
	{
		User user=((UserRepository) userRepository).findByUsernameAndPassword(login.getUsername(), login.getPassword());
		System.out.println(login.getUsername()+ login.getPassword());
		if(user != null)
		{
			return user;
		}
		else {
		
			return null;
		}
		
		
	}
	
	public User saveUser(User user)
	{
		return userRepository.save(user);
	}
	
	public User getcurrentUser(String username)
	{
		User user=userRepository.findByUsername(username);
		return user;
	}
	
	public User getUsername(int id)
	{
		User user=userRepository.findById(id).get();
		return user;
	}
	
	public List<User> getAll()
	{
		List<User> users= userRepository.findAll();
		return users;
	}
	//public User register(int id, String username, String firstName, String lastname,String email, String password, String phno);

	
	
}
