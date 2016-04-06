package springapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import springapp.dao.PlaceDAO;
import springapp.model.Place;

import java.util.List;
/**
 * Created by Gvozd on 26.03.2016.
 */
@Service
public class PlaceServiceImpl implements PlaceService {

    @Autowired
    private PlaceDAO placeDAO;

    @Transactional
    public void addPlace(Place place) {
        placeDAO.addPlace(place);
    }

    @Transactional
    public List<Place> listPlace() {
        return placeDAO.listPlace();
    }

    @Transactional
    public void removePlace(Integer id) {
        placeDAO.removePlace(id);
    }

    @Transactional
    public Place getPlace(Integer id) {
        return placeDAO.getPlace(id);
    }
}
