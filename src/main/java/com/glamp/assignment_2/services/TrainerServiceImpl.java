/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glamp.assignment_2.services;

import com.glamp.assignment_2.model.Trainer;
import com.glamp.assignment_2.repos.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author glamb
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public Trainer insertTrainer(Trainer trainer) {

        Trainer tr = trainerRepository.save(trainer);

        return tr;
    }

    @Override
    public void deleteTrainer(int trainerId) {
        trainerRepository.deleteById(trainerId);
    }

    @Override
    public Trainer getTrainerById(int trainerId) {
        return trainerRepository.getOne(trainerId);
    }

    @Override
    public List<Trainer> getTrainerByNameLike(String name) {
        return trainerRepository.findByFirstNameStartingWith(name);
    }

    @Override
    public List<Trainer> findAllTrainers() {
        return trainerRepository.findAll();
    }

}
