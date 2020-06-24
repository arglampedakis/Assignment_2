/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glamp.assignment_2.repos;

import com.glamp.assignment_2.model.Trainer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glamb
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
     List<Trainer> findByFirstNameStartingWith(String firstName);
     
     @Query("SELECT t.firstName FROM Trainer t")
     List<String> findAllFirstName();

}
