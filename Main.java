package com.hexaware.mainvehicleprogram;

import java.util.Scanner;
import com.hexaware.userclass.User;
import com.hexaware.concreteclass.Car;
import com.hexaware.concreteclass.Bike;
import com.hexaware.concreteclass.Truck;
import com.hexaware.abstractclass.VehicleClass;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        User user = new User("John");

        VehicleClass car = new Car("Honda Civic", 100);
        VehicleClass bike = new Bike("Yamaha", 50);
        VehicleClass truck = new Truck("Ford F-150", 200);

        while (true) {
            System.out.println("\n1. Rent Car\n2. Rent Bike\n3. Rent Truck\n4. Return Vehicle\n5. View Rented Vehicles\n6. Exit");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    user.rentVehicle(car);
                    break;
                case 2:
                    user.rentVehicle(bike);
                    break;
                case 3:
                    user.rentVehicle(truck);
                    break;
                case 4:
                    System.out.println("Which vehicle would you like to return? (1: Car, 2: Bike, 3: Truck)");
                    int returnChoice = scanner.nextInt();
                    if (returnChoice == 1) user.returnVehicle(car);
                    else if (returnChoice == 2) user.returnVehicle(bike);
                    else if (returnChoice == 3) user.returnVehicle(truck);
                    break;
                case 5:
                    user.viewRentedVehicles();
                    break;
                case 6:
                    System.out.println("Exiting the system...");
                    return;
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }
}
