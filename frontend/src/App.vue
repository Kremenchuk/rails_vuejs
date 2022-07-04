<template>
  <div id="app">
    <div class="container">
      <h1>Todo List Manager</h1>
      <h6>some text</h6>
      <AddTodo />
      <FilterTodos />
      <TodosList />
      <DeleteTodo />
    </div>
  </div>
</template>

<script>
import TodosList from "@/components/TodosList";
import AddTodo from "@/components/AddTodo";
import FilterTodos from "@/components/FilterTodos";
import DeleteTodo from "@/components/DeleteTodo";

export default {
  name: "App",
  components: {
    TodosList,
    AddTodo,
    FilterTodos,
    DeleteTodo,
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
