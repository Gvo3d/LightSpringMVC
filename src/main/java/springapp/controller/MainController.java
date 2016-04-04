package springapp.controller;

/**
 * Created by Gvozd on 29.03.2016.
 */

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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

    public MainController() {
        final Log logger = LogFactory.getLog(getClass());
        logger.info("Returning index view");
    }

    @Autowired
    private PlaceService placeService;

    @RequestMapping("/list")
    public String listPlaces(Map<String, Object> map) {
        map.put("placeList", placeService.listPlace());

        return "places";
    }

    @RequestMapping("/")
    public String homeSlash() {
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String home() {
        return "index";
    }

    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPlace(@ModelAttribute("place") Place place,
                             BindingResult result) {

        placeService.addPlace(place);

        return "redirect:/list";
    }

    @RequestMapping("/delete/{placeId}")
    public String deletePlace(@PathVariable("placeId") Integer placeId) {

        placeService.removePlace(placeId);

        return "redirect:/list";
    }
}