package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Deal {
    private LocalDate date;
    private String name;
    // private int number;
    // private static int countOfDeals = 0;

    public static List<Deal> getDeals() {
        return deals;
    }

    private static List<Deal> deals = new ArrayList<Deal>();

    public Deal(LocalDate date, String name) {
        this.date = date;
        this.name = name;
    }

    @Override
    public String toString() {
        return name.substring(0, 1).toUpperCase() + name.substring(1); // чтобы напечать слово с заглавной буквы

    }

    public static void addNewDeal(Deal deal) {
        deals.add(deal);
    }

    public static void printDeals() {
        for (Deal deal : deals) {
            System.out.println(deal);
        }
    }
}
