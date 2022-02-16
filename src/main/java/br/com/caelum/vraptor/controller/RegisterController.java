package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.model.Tbuser;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("register")
@Controller
public class RegisterController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject Validator validator;
	
	@Get("")
	public void register() {
		
	}
	@Post("saveuser")
	public void saveuser(@Valid Tbuser tbuser, String comparePassword) {
		
		result.include("tbuser",tbuser);
		result.include("comparePassword",comparePassword);
		
		boolean thePasswords = comparePassword.contentEquals(tbuser.getPassword());
		validator.addIf(!thePasswords, new SimpleMessage("validationPassword", "Password validation is incorrect"));
		
		validator.onErrorRedirectTo(this).register();
		em.persist(tbuser);
		result.redirectTo(DashboardController.class).dashboard();
		
		
	}

}
