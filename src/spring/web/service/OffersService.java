package spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.web.dao.Offer;
import spring.web.dao.OffersDAO;

@Service("offersService")
public class OffersService {

	//Clasa ce coordoneaza dao-urile
	private OffersDAO offersDao;
	
	
	public List<Offer> getCurrent(){
		
		
		return offersDao.getOffers();
	}

	@Autowired
	public void setOffersDao(OffersDAO offersDao) {
		this.offersDao = offersDao;
	}
	
	
}
