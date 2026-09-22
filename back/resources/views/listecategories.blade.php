@extends('base')
@section('content')
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
<ul>
@foreach ($categories as $categorie)
    <li>
        {{$categorie->categorie}}
        <form method="POST" action="{{route('destroycategorie', $categorie->id)}}" style="display: inline;">
            @csrf
            @method('DELETE')
            <button type="submit" onclick="return confirm('Supprimer cette catégorie et ses questions ?')">Supprimer</button>
        </form>
    </li>
@endforeach
</ul>