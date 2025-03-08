package com.project.spring_boot.my_website.page.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class ToDoService {

    private static List<ToDo> todos = new ArrayList<>();
    static {
        todos.add(new ToDo(1, "1234", "Hallo1", LocalDate.now().plusYears(1), false));
        todos.add(new ToDo(2, "1234", "Hallo2", LocalDate.now().plusYears(2), false));
        todos.add(new ToDo(3, "1234", "Hallo3", LocalDate.now().plusYears(3), false));
    }

    public List<ToDo> findByUserName(String username) {
        return todos.stream()
                .filter(todo -> todo.getUsername().equals(username))
                .toList();
    }
}
