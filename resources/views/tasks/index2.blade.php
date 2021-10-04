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

    <h1>User Story {{ $u_id}} Task Info<h1>

    @csrf

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Order</th>
            <th>Status ID</th>   
        </tr>
      @if(count($tasks) )
      @foreach($tasks as $task)
        <tr> 
            <th>
              {{ $task->id }}
            </th>
        
            <th>
              {{$task->title}}
            </th>
        
            <th>
              {{ $task->description }}
            </th>

            <th>
              {{ $task->order }}
            </th>
        
            <th>
              {{ $task->status_id }}
            </th>

        </tr>
        @endforeach
      @endif
      </table>
       
      
@endsection