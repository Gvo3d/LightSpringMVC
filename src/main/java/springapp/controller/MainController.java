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

import java.util.Map;

@Controller
public class MainController {
    final Log logger = LogFactory.getLog(getClass());

    public MainController() {
        logger.info("MainControllerLoaded");
    }

    @RequestMapping("/")
    public String homeSlash() {
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String home() {
        return "index";
    }

}