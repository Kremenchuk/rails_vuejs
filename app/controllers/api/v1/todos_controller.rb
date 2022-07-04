class Api::V1::TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /titles
  def index
    @todos = Todo.all
    limit = params[:_limit]

    if limit.present?
      limit = limit.to_i
      @todos = @todos.last(limit)
    end

    render json: @todos.reverse
  end

  # GET /titles/1
  def show
    render json: @todo
  end

  # POST /titles
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created, location: api_v1_todo_url(@todo)
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /titles/1
  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /titles/1
  def destroy
    @todo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.require(:todo).permit(:id, :title, :completed, :_limit)
    end
end
