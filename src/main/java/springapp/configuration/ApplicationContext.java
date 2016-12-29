package springapp.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by Gvozd on 29.12.2016.
 */
@Configuration
public class ApplicationContext {

    @Bean
    public CoolDao dao(){
        return new CoolDaoImpl();
    }

    @Bean(initMethod = "init", destroyMethod = "closeResources")
    @Scope(BeanDefinition.SCOPE_PROTOTYPE)
    public CoolService coolService(){
        CoolServiceImpl service = new CoolServiceImpl();
        service.setDao(dao());
        return service;
    }
}
