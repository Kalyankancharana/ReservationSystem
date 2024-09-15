package com.wipro.ShipReservationSystem.Entities;

import java.sql.Date;
import java.sql.Time;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Ship_Details")
public class ShipDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;
	private String shipname;
	private String source;
	private String destination;
	@DateTimeFormat
	private Date dateofjourney;
	@DateTimeFormat
	private Time time;
	private int totalseats;
	private int available;
	private double cost;
	public ShipDetails(int sid, String shipname, String source, String destination, Date dateofjourney, Time time,
			int totalseats, int available, double cost) {
		super();
		this.sid = sid;
		this.shipname = shipname;
		this.source = source;
		this.destination = destination;
		this.dateofjourney = dateofjourney;
		this.time = time;
		this.totalseats = totalseats;
		this.available = available;
		this.cost = cost;
	}
	public ShipDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getShipname() {
		return shipname;
	}
	public void setShipname(String shipname) {
		this.shipname = shipname;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Date getDateofjourney() {
		return dateofjourney;
	}
	public void setDateofjourney(Date dateofjourney) {
		this.dateofjourney = dateofjourney;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public int getTotalseats() {
		return totalseats;
	}
	public void setTotalseats(int totalseats) {
		this.totalseats = totalseats;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	
	
}
