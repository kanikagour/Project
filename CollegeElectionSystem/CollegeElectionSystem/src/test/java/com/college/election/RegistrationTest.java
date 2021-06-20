package com.college.election;

import java.text.ParseException;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import com.college.election.entities.User;
import com.college.election.repos.ElectionRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace=Replace.NONE)
public class RegistrationTest {
	@Autowired
	private ElectionRepository userRepo;
	User user=new User();
	
	@Test
	@Rollback(false)
	public void testCreateRegistration() throws ParseException {
		User user1=new User(1, 170040260, "ece","gourav","komeragourav@gmail.com", "gourav123", "mael", "what is your favrate place?", "america");
		User saveuser=userRepo.save(user1);
		assertNotNull(saveuser);
	
	}
	@Test
	@Rollback(false)
	public void logintest()
	{
		if(user.getRegisterno()==170040260 && user.getPassword().equals("gourav123"))
		{
		   System.out.print(true);
		}
		
	}
	
	@Test
	@Rollback
	public void forgotpasswordtest()
	{
		
		if(user.getRegisterno()==170040260)
		{
		    System.out.print(true);;
		}
	}

}
