@if($errors->any())
    <div class="alert alert-danger">
        <strong>Er is iets mis gegaan!</strong>

        <ul>
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif