package com.project.spring_boot.my_website.page.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
    public String showTodoPage(ModelMap model) { // originally there
        String username = (String) model.get("username");
        if (username == null) {
            return "redirect:/login";
        }
        ToDo todo = new ToDo(0, username, "Default", LocalDate.now().plusYears(1), false); // default value (Vorbelegung)
        model.addAttribute("todo", todo);
        return "todo";
    }

    @RequestMapping("/delete-todo")
    public String deleteTodos(@RequestParam int id) {

        toDoService.deleteById(id);
        return "redirect:list-todos";
    }

    // Add a new todo
    @PostMapping("/add-todo")
    public String addTodoPage(ModelMap model, @Valid @ModelAttribute("todo") ToDo todo, BindingResult result) { // what we are gonna fill in

        if (result.hasErrors()) {
            return "todo";
        }

        String username = (String) model.get("username");
        toDoService.addTodo(username, todo.getDescription(), LocalDate.now().plusYears(1), false); // Add the new todo to the list of todos
        return "redirect:list-todos";
    }
}
