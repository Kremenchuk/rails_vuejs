<template>
  <div id="app">
    <div class="container">
      <h1>Todo List Manager</h1>
      <h6>some text</h6>
      <AddTodo />
      <FilterTodos />
      <TodosList />
    </div>
  </div>
</template>

<script>
import TodosList from "@/components/todos/TodosList";
import AddTodo from "@/components/todos/AddTodo";
import FilterTodos from "@/components/todos/FilterTodos";

export default {
  name: "App",
  components: {
    TodosList,
    AddTodo,
    FilterTodos,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
