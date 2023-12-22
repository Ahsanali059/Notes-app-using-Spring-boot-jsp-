package com.example.NotesApp.NotesApp.Repository;

import com.example.NotesApp.NotesApp.Models.Note;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotesRepository extends JpaRepository<Note,Long>
{

}
