@extends('base')

@section('content')
<h1>Ajouter une question</h1>
<form method="POST" action="{{route('storequestion')}}" class="form-select">
    @csrf
    <div class="form-group">
        <label for="">Catégorie</label>
        <select name="categorie" id="">
            @foreach($categories as $categorie)
                <option value="{{$categorie->categorie}}">{{$categorie->categorie}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
    <label for="question">Question</label>
    <input type="text" class="form-control" name="question" id="question">
    </div>
    <div class="form-group">
    <label for="reponse1">Réponse 1 (bonne réponse)</label>
    <input type="text" class="form-control" name="reponse1" id="reponse1">
</div>
<div class="form-group">
    <label for="reponse2">Réponse 2</label>
    <input type="text" class="form-control" name="reponse2" id="reponse2">
</div>
<div class="form-group">
    <label for="reponse3">Réponse 3</label>
    <input type="text" class="form-control" name="reponse3" id="reponse3">
</div>
<div class="form-group">
    <label for="reponse4">Réponse 4</label>
    <input type="text" class="form-control" name="reponse4" id="reponse4">
</div>
@for ($answerIndex = 5; $answerIndex <= 10; $answerIndex++)
<div class="form-group">
    <label for="reponse{{$answerIndex}}">Réponse {{$answerIndex}}</label>
    <input type="text" class="form-control" name="reponse{{$answerIndex}}" id="reponse{{$answerIndex}}">
</div>
@endfor
<div class="form-group">
    <button type="submit" class="btn btn-primary">Ajouter</button>
</div>
</form>