<?php

namespace App\Http\Controllers;

use App\Task;
use App\Status;
use App\UserStory;
use App\User;
use App\Sprint;
use App\Project;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index2($u_id)
    {
        $project = new Project;
        $tasks = auth()->user()->statuses()->with('tasks')->get();
        $userstory = new UserStory;
        $sprint = new Sprint();
        $usersprint = new userStory();
        $tasks = \App\Task::where('u_id', '=', $u_id)->get();

        return view('tasks.index2',['tasks'=>$tasks,'userstories'=>$userstory,'sprint'=>$sprint,'usersprint'=>$usersprint,'projects'=>$project->all()],compact('tasks'))->with('u_id', $u_id);
    }

    public function index()
    {
    //    $project = new Project;
    //    $sprint = new Sprint();
    //    $usersprint = new userStory();

        $tasks = auth()->user()->statuses()->with('tasks')->get();

    //    $userstory = \App\Task::where('sprint_id', '=', $sprint_id)->get();
    //    $tasks2 = \App\Task::where('u_id', '=', $u_id)->get();
        //\App\Status::where('user_id', '=', 1)->get();
        //auth()->user()->statuses()->with('tasks')->get();
        //['projects'=>$project, 'pros'=>$pro])
        //return view('tasks.index', ['tasks'=>$tasks]);
        return view('tasks.index',compact('tasks'));
    //    return view('tasks.index',['tasks2'=>$tasks2,'userstories'=>$userstory,'sprint'=>$sprint,'usersprint'=>$usersprint,'projects'=>$project->all()],compact('tasks'))->with('sprint_id', $sprint_id);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => ['required', 'string', 'max:56'],
            'description' => ['nullable', 'string'],
            'status_id' => ['required', 'exists:statuses,id']
        ]);

        return $request->user()
            ->tasks()
            ->create($request->only('title', 'description', 'status_id'));
    }

    public function sync(Request $request)
    {
        $this->validate(request(), [
            'columns' => ['required', 'array']
        ]);

        foreach ($request->columns as $status) {
            foreach ($status['tasks'] as $i => $task) {
                $order = $i + 1;
                if ($task['status_id'] !== $status['id'] || $task['order'] !== $order) {
                    request()->user()->tasks()
                        ->find($task['id'])
                        ->update(['status_id' => $status['id'], 'order' => $order]);
                }
            }
        }

        return $request->user()->statuses()->with('tasks')->get();
    }

    public function show(Task $task)
    {
        //
    }

    public function edit(Task $task)
    {
        //
    }

    public function update(Request $request, Task $task)
    {
        //
    }

    public function destroy(Task $task)
    {
        //
    }
}
