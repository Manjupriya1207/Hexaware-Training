package com.hexaware.concreteclass;

import com.hexaware.abstractclass.VehicleClass;

public class Truck extends VehicleClass {

	public Truck(String name, double price) {
		super(name, price);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void rentVehicle() {
		// TODO Auto-generated method stub
		if(!isRented()) {
			setRented(true);
			System.out.println("Truck"+getName()+"is rented Now");
		}
		else {
			setRented(false);
			System.out.println("Truck"+getName()+"is rented already");
		}
	}

	@Override
	public void returnVehicle() {
		// TODO Auto-generated method stub
		if (isRented()) {
            setRented(false);
            System.out.println("Truck " + getName() + " has been returned.");
        } else {
            System.out.println("Truck is not rented.");
        }
	}

}
