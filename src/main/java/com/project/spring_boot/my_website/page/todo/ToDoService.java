package com.project.spring_boot.my_website.page.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class ToDoService {

    private static int todosCounter = 0;
    private static List<ToDo> todos = new ArrayList<>();
    static {
        todos.add(new ToDo(++todosCounter, "1234", "Hallo1", LocalDate.now().plusYears(1), false));
        todos.add(new ToDo(++todosCounter, "1234", "Hallo2", LocalDate.now().plusYears(2), false));
        todos.add(new ToDo(++todosCounter, "1234", "Hallo3", LocalDate.now().plusYears(3), false));
    }

    // Get all todos for a specific user
    public List<ToDo> findByUserName(String username) {
        if (username == null) {
            return new ArrayList<>();
        }
        return todos.stream()
                .filter(todo -> todo.getUsername().equals(username))
                .toList();
    }

    // Add a new todo
    public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
        ToDo todo = new ToDo(++todosCounter, username, description, targetDate, done);
        todos.add(todo);
    }
}
