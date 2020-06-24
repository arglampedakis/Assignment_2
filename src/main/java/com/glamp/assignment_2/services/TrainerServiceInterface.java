/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glamp.assignment_2.services;

import com.glamp.assignment_2.model.Trainer;
import java.util.List;

/**
 *
 * @author glamb
 */
public interface TrainerServiceInterface {

    public Trainer insertTrainer(Trainer trainer);

    public void deleteTrainer(int trainerId);

    public Trainer getTrainerById(int trainerId);
    
    public List<Trainer> getTrainerByNameLike(String name);
    
    public List<Trainer> findAllTrainers();
    
    public List<String> findAllTrainersNames();
}
