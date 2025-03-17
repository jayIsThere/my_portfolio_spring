package com.project.spring_boot.my_website.page.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
public class ToDoController {

    // Inject the ToDoService
    private ToDoService toDoService;
    public ToDoController(ToDoService toDoService) {
        super();
        this.toDoService = toDoService;
    }

    // List all todos for a specific user
    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model) {
        String username = (String) model.get("username");
        List<ToDo> todos = toDoService.findByUserName(username);
        model.addAttribute("todos", todos);
        return "listTodos";
    }

    // Show a todo page
    @GetMapping("/add-todo")
    public String showTodoPage() {
        return "todo";
    }

    // Add a new todo
    @PostMapping("/add-todo")
    public String addTodoPage(@RequestParam("description") String description, ModelMap model) {

        String username = (String) model.get("username");
        ToDo newTodo = new ToDo();
        newTodo.setDescription(description);
        newTodo.setUsername(username);
        newTodo.setTargetDate(LocalDate.now());
        newTodo.setDone(false);

        toDoService.addTodo(newTodo); // Add the new todo to the list of todos
        return "redirect:list-todos";
    }
}
