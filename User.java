package com.hexaware.userclass;

import com.hexaware.abstractclass.VehicleClass;

public class User {
    private String name;
    private VehicleClass[] rentedVehicles;
    private int rentedCount;

    public User(String name) {
        this.name = name;
        this.rentedVehicles = new VehicleClass[10];  // Fixed-size array for simplicity
        this.rentedCount = 0;
    }

    public String getName() {
        return name;
    }

    public void rentVehicle(VehicleClass vehicle) {
        if (!vehicle.isRented()) {
            if (rentedCount < rentedVehicles.length) {
                vehicle.rentVehicle();
                rentedVehicles[rentedCount] = vehicle;
                rentedCount++;
                System.out.println(vehicle.getName() + " has been rented by " + name + ".");
            } else {
                System.out.println("Cannot rent more vehicles. Limit reached.");
            }
        } else {
            System.out.println(vehicle.getName() + " is already rented.");
        }
    }

    public void returnVehicle(VehicleClass vehicle) {
        boolean found = false;
        for (int i = 0; i < rentedCount; i++) {
            if (rentedVehicles[i].equals(vehicle)) {
                vehicle.returnVehicle();
                // Shift the remaining elements to the left after returning the vehicle
                for (int j = i; j < rentedCount - 1; j++) {
                    rentedVehicles[j] = rentedVehicles[j + 1];
                }
                rentedVehicles[rentedCount - 1] = null;  // Clear the last element
                rentedCount--;
                found = true;
                System.out.println(vehicle.getName() + " has been returned by " + name + ".");
                break;
            }
        }
        if (!found) {
            System.out.println("You have not rented " + vehicle.getName() + ".");
        }
    }

    public void viewRentedVehicles() {
        if (rentedCount == 0) {
            System.out.println(name + " has not rented any vehicles.");
        } else {
            System.out.println(name + "'s rented vehicles:");
            for (int i = 0; i < rentedCount; i++) {
                System.out.println(rentedVehicles[i].getName());
            }
        }
    }
}
