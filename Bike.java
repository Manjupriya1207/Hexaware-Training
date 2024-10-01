package com.hexaware.concreteclass;

import com.hexaware.abstractclass.VehicleClass;

public class Bike extends VehicleClass {
	public Bike(String name,double price) {
		super(name,price);
	}

	@Override
	public void rentVehicle() {
		// TODO Auto-generated method stub
		if(!isRented()) {
			setRented(true);
			System.out.println("Bike"+getName()+"is rented Now");
		}
		else {
			setRented(false);
			System.out.println("Bike"+getName()+"is rented already");
		}
		
	}

	@Override
	public void returnVehicle() {
		// TODO Auto-generated method stub
		if (isRented()) {
            setRented(false);
            System.out.println("Bike " + getName() + " has been returned.");
        } else {
            System.out.println("Bike is not rented.");
        }
		
	}
	

}
