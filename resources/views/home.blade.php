@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
 
                <div class="panel-body">
                    Assalamualaikum {{ Auth::user()->name }}!<br>
                    Token Anda adalah: <strong>{{ Auth::user()->api_token }}</strong>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection