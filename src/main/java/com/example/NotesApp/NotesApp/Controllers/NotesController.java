package com.example.NotesApp.NotesApp.Controllers;

import com.example.NotesApp.NotesApp.Models.Note;
import com.example.NotesApp.NotesApp.Repository.NotesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class NotesController
{
    @Autowired
    private NotesRepository notesRepository;


    @GetMapping("/")
    public String viewHomePage(Model model)
    {
        List<Note> notes = notesRepository.findAll();

        model.addAttribute("notes",notes);

        return "index";
    }

    @GetMapping("/showForm")
    public String ShowForm(Model model)
    {
         model.addAttribute("note",new Note());
         return "note-form";
    }

    @PostMapping("/saveNote")
    public String saveNote(Note note)
    {
        notesRepository.save(note);
        return "redirect:/";
    }
}
