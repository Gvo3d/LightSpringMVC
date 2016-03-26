import org.junit.Assert;
import org.springframework.web.servlet.ModelAndView;
import springapp.controller.HelloController;

import javax.servlet.ServletException;
import java.io.IOException;

/**
 * Created by Gvozd on 25.03.2016.
 */

public class Test {

    @org.junit.Test
    public void tesing() throws ServletException, IOException {
        HelloController controller = new HelloController();
        ModelAndView modelAndView = controller.handleRequest(null, null);
        Assert.assertEquals("hello",modelAndView.getViewName());
    }
}
