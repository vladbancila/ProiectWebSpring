package spring.web.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.web.dao.Offer;
import spring.web.service.OffersService;

@Controller
public class HomeControllers {

	private OffersService offerService;

	/*
	 * Varianta 1 cu utilizare de sesiune
	 * 
	 * @RequestMapping("/") public String showHome(HttpSession session){
	 * 
	 * session.setAttribute("nume", "Vlad");
	 * 
	 * return "Home"; }
	 */

	/*
	 * Varianta a 2-a cu utilizare de ModelAndView respectiv pe request se regasesc aceste atribute
	 * 
	 * @RequestMapping("/") public ModelAndView showHome(HttpSession session){
	 * 
	 * session.setAttribute("nume2", "Vlad");
	 * 
	 * //ramane valabil pe request acest atribut de tip map, dupa alt request se sterge ModelAndView mv = new ModelAndView("Home");
	 * 
	 * Map<String,Object> model = mv.getModel();
	 * 
	 * model.put("nume", "Octavian2");
	 * 
	 * return mv; }
	 */

	// Varianta a 3-a care [resupune primirea ca parametru un Model din partea Spring ot pe request

	@RequestMapping("/offers")
	public String showOffers(Model model) {

		List<Offer> offers = offerService.getCurrent();

		model.addAttribute("offers", offers);

		model.addAttribute("nume", "<b>Vlad Octavian</b>");

		return "offers";
	}

	// Mapping pentru pagina de creare oferta .jsp
	@RequestMapping("/createoffer")
	public String createOffer() {

		return "createoffer";
	}

	//Maping de test cand se introduce un id si se intoarce valoarea inapoi
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String showTest(Model model, @RequestParam("id")String id) {

		System.out.println("id is: "+id);
		
		
		return "Home";
	}

	@RequestMapping(value="/docreateoffer",method=RequestMethod.POST)
	public String doCreateOffer(Model model,Offer offer) {

		System.out.println(offer);
		return "offercreated";
	}
	
	@Autowired
	public void setOfferService(OffersService offerService) {
		this.offerService = offerService;
	}

	/*
	 * Varianta a 4 -a un mix intre primele doua functioneaza cu sesiune si parametru pe request
	 * 
	 * @RequestMapping("/") public ModelAndView showHome(HttpSession session){
	 * 
	 * session.setAttribute("nume2", "Vlad");
	 * 
	 * //ramane valabil pe request acest atribut de tip map, dupa alt request se sterge ModelAndView mv = new ModelAndView("Home");
	 * 
	 * Map<String,Object> model = mv.getModel();
	 * 
	 * model.put("nume", "Octavian2");
	 * 
	 * return mv; }
	 */

}
