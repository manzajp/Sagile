@extends('layouts.app2')
<style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even) {
          background-color: #dddddd;
        }

        .button {
         background-color: #4CAF50; /* Green */
         border: none;
         color: white;
         padding: 15px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
        }
</style>

@section('dashboard')

@foreach($projects as $project)
        <li>
            <a href="{{ route('projects.edit', [$project]) }}">
             {{ $project->proj_name }} 
            </a>
                     
        </li>
@endforeach
        
@if($projects->isEmpty())
     No project.
@endif
@endsection

@section('content')
<br><br>
    <a href="{{route('profeature.index')}}" class="button">Project List</a>


    @csrf
    <table id=userstories>
        <tr>
            <th>ID</th>
            <th>User Stories</th>
            <th>Description</th>
            <th>Priority</th>
            <th>Status</th>
            <th>Performance</th>
            <th>Security</th>
            <th>Tasks</th>
            <th>Edit</th> 
            <th>Delete</th>
            
        </tr>
      @if(count($userstories) )
      @foreach($userstories as $userstory)
        <tr> 
            <th>
              {{ $userstory->u_id }}
            </th>
        
            <th>
              {{$userstory->user_story}}
            </th>
        
            <th>
              {{ $userstory->desc_story }}
            </th>
        
            <th>
              {{ $userstory->prio_story }}
            </th>

            <th>
              {{ $userstory->title }}
            </th>

            <th>
              {{ $userstory->perfeature_id }}
            </th>

            <th>
              {{ $userstory->secfeature_id }}
            </th>
      
            <th>
              <a href="{{route('tasks.index')}}">
                View
            </th>

            <th>
              <a href="{{route('userstory.edit', [$userstory->u_id])}}">
                  Edit
              </a>
            </th>

            <th>
                <button type="submit"><a href="{{route('userstory.destroy', $userstory)}}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this userstory?');">Delete</button>
            </th>
        </tr>
        @endforeach
      @endif
      </table>
        <br><br><br>
          <button type="submit"><a href="{{route('userstory.create')}}">Create User Story</a></button>
       
      
@endsection
