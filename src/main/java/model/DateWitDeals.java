package model;

import java.time.LocalDate;
import java.util.*;

public class DateWitDeals {
    private static Map<LocalDate, List<Deal>> datesWithDeals = new HashMap<>();
    private static Set<LocalDate> dates = datesWithDeals.keySet();

    private LocalDate date;
    private List<Deal> deals;

    public DateWitDeals(Deal deal) {
        LocalDate dateOfThisDeal = deal.getDate();
        if(!dates.contains(dateOfThisDeal)) { // если такой даты в списке нет, то мы создаем под нее свою карту и добавляем первое дело
            this.date = dateOfThisDeal;
            deals = new ArrayList<>();
            deals.add(deal);
            datesWithDeals.put(dateOfThisDeal, deals);
        } else { // если такая дата есть, мы находим список дел, который ей соответствует, и добавляем туда новое дело
            for (LocalDate localDate : datesWithDeals.keySet()) {
                if(dateOfThisDeal.equals(localDate)) {
                    datesWithDeals.get(localDate).add(deal);
                }
            }
        }


    }
}
