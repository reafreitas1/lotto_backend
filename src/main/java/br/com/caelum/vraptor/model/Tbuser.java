package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "tbuser")
public class Tbuser extends Model {
	
	@NotEmpty(message="{tbuser.name.empty}") @Size(min=2, max=20, message="{tbuser.name.size}")
	private String name;
	@NotEmpty(message="{tbuser.email.empty}") @Email(message="{tbuser.email.invalid}")
	private String email;
	@NotEmpty(message="{tbuser.password.empty}") @Size(min=6, max=10, message="{tbuser.password.size}")
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
