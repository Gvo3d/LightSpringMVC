package springapp.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import springapp.model.Place;

import java.util.List;

/**
 * Created by Gvozd on 26.03.2016.
 */
@Repository
public class PlaceDAOImpl implements PlaceDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void addPlace(Place place) {

    }

    public List<Place> listPlace() {
        return null;
    }

    public void removePlace(Integer id) {

    }
}
