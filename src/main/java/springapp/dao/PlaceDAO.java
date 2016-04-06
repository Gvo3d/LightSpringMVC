package springapp.dao;

import springapp.model.Place;

import java.util.List;
/**
 * Created by Gvozd on 26.03.2016.
 */
public interface PlaceDAO {

    public void addPlace(Place place);

    public List<Place> listPlace();

    public void removePlace(Integer id);

    public Place getPlace(Integer id);
}