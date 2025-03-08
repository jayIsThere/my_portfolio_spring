package com.project.spring_boot.my_website.page.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
public class ToDoController {

    private ToDoService toDoService;

    public ToDoController(ToDoService toDoService) {
        super();
        this.toDoService = toDoService;
    }
    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model) {
        String username = (String) model.get("username");
        List<ToDo> todos = toDoService.findByUserName(username);
        model.addAttribute("todos", todos);
        return "listTodos";
    }

    @GetMapping("/add-todo")
    public String showTodoPage() {
        return "todo";
    }

    @PostMapping("/add-todo")
    public String addTodoPage(@RequestParam("description") String description, ModelMap model) {

        String username = (String) model.get("username");
        ToDo newTodo = new ToDo();
        newTodo.setDescription(description);
        newTodo.setUsername(username);
        newTodo.setTargetDate(LocalDate.now());
        newTodo.setDone(false);

        toDoService.addTodo(newTodo);
        return "redirect:list-todos";
    }
}
