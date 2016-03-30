package springapp.controller;

/**
 * Created by Gvozd on 29.03.2016.
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import springapp.model.Place;
import springapp.service.PlaceService;

import java.util.Map;

@Controller
public class MainController {

    @Autowired
    private PlaceService placeService;

    @RequestMapping("/list")
    public String listContacts(Map<String, Object> map) {

        map.put("place", new Place());
        map.put("placeList", placeService.listPlace());

        return "places";
    }

    @RequestMapping("/")
    public String home() {
        return "redirect:/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPlace(@ModelAttribute("place") Place place,
                             BindingResult result) {

        placeService.addPlace(place);

        return "redirect:/places";
    }

    @RequestMapping("/delete/{placetId}")
    public String deletePlace(@PathVariable("placeId") Integer placeId) {

        placeService.removePlace(placeId);

        return "redirect:/places";
    }
}