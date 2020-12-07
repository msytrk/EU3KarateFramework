package utilities;


import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class SpartanDataGenerator {


    public static Map<String,Object> createSpartan(){
        Map<String,Object> newSpartan=new HashMap<>();

        Faker faker=new Faker();
        String name=faker.name().firstName();
        String gender=faker.demographic().sex();
        Long phone=Long.parseLong(faker.numerify("##########"));

        newSpartan.put("name",name);
        newSpartan.put("gender",gender);
        newSpartan.put("phone",phone);

        return newSpartan;
}



}
