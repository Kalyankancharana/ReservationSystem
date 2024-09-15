package com.wipro.ShipReservationSystem.Entities;

import java.sql.Date;
import java.sql.Time;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Booking_Details")
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingid;
	private String shipname;
	private int sid;
	private int pid;
	private String passengername;
	private String name;
	@DateTimeFormat
	private Date dateofjourney;
	@DateTimeFormat
	private Time time;
	private String source;
	private String destination;
	private double price;
	private int seats;
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public String getShipname() {
		return shipname;
	}
	public void setShipname(String shipname) {
		this.shipname = shipname;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPassengername() {
		return passengername;
	}
	public void setPassengername(String passengername) {
		this.passengername = passengername;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Booking(int bookingid, String shipname, int sid, int pid, String passengername, String name,
			Date dateofjourney, Time time, String source, String destination, double price, int seats) {
		super();
		this.bookingid = bookingid;
		this.shipname = shipname;
		this.sid = sid;
		this.pid = pid;
		this.passengername = passengername;
		this.name = name;
		this.dateofjourney = dateofjourney;
		this.time = time;
		this.source = source;
		this.destination = destination;
		this.price = price;
		this.seats = seats;
	}
	
	
	
}
