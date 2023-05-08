class TasksController < ApplicationController
    # Task一覧画面表示
    def index
      @tasks = Task.all
    end
    # Task作成画面表示
    def new
      @task = Task.new
    end
    # Task作成処理
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path
      end
    end
    private
    # ストロングパラメータ
    # permitで指定した項目を許可する
    def task_params
      params.require(:task).permit(:content)
    end
  end