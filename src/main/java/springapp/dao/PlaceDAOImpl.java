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
        sessionFactory.getCurrentSession().save(place);
    }

    @SuppressWarnings("unchecked")
    public List<Place> listPlace() {
        return sessionFactory.getCurrentSession().createQuery("from place")
                .list();
    }

    public void removePlace(Integer id) {
        Place place = (Place) sessionFactory.getCurrentSession().load(
                Place.class, id);
        if (null != place) {
            sessionFactory.getCurrentSession().delete(place);
        }
    }
}