package com.mii.dao;

import java.util.List;

import com.mii.model.City;

public interface CityDao extends GenericDAO<City>{

	List<City> getActive();

	List<City> getAllCitiesByStateId(int stateId);
}
