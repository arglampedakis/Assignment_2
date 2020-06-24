/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glamp.assignment_2.controllers;

import com.glamp.assignment_2.model.Trainer;
import com.glamp.assignment_2.services.TrainerServiceInterface;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author glamb
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;

    @GetMapping("/preInsertTrainer")
    public String showTrainerForm(ModelMap mm) {
        Trainer trainer = new Trainer();
        mm.addAttribute("newTrainer", trainer);
        return "trainerForm";
    }

    @PostMapping("/doInsertTrainer")
    public String insertTrainer(@Valid @ModelAttribute("newTrainer") Trainer t,
            BindingResult bindingResult,
            ModelMap mm) {

        if (bindingResult.hasErrors()) {
            t.setFirstName("");
            t.setLastName("");
            t.setTrSubject("");
            return "trainerForm";
        } else {
            trainerServiceInterface.insertTrainer(t);
            return "redirect:/allTrainers";
        }
    }

    @GetMapping("/searchTrainerByName")
    public String searchByName(@ModelAttribute("searchInput") String name,
            ModelMap mm) {
        List<Trainer> result = trainerServiceInterface.getTrainerByNameLike(name);
        mm.addAttribute("trainerList", result);
        return "trainerDetails";
    }

    @ResponseBody
    @GetMapping("/getTrainersNames")
    public List<String> getAllNames() {
        List<String> result = trainerServiceInterface.findAllTrainersNames();
        return result;
    }

    @GetMapping("/allTrainers")
    public String showTrainersTable(ModelMap mm) {
        List<Trainer> result = trainerServiceInterface.findAllTrainers();
        mm.addAttribute("allTrainers", result);
        return "trainersTable";
    }

    @GetMapping("/deleteTrainer/{id}")
    public String deleteTrainerById(@PathVariable String id) {
        trainerServiceInterface.deleteTrainer(Integer.parseInt(id));
        return "redirect:/allTrainers";
    }

    @GetMapping("/updateTrainer/{id}")
    public String updateTrainerById(@PathVariable String id,
            ModelMap mm) {
        Trainer trainer = trainerServiceInterface.getTrainerById(Integer.parseInt(id));
        mm.addAttribute("newTrainer", trainer);
        return "trainerForm";
    }
}
