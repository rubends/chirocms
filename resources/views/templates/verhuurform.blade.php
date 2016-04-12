<section id="main">
    <div class="container template-content">

        <h1>{{$page->title}}</h1>

        {!! $page->content !!}

        {!! Form::open([
            'method' => 'post',
            'route' => 'booking.submit'
        ]) !!}


        <!-- Step 1 -->
        <p><span>1</span> @lang('booking.pick_a_date')</p>
        <div class="step" id="step1">
            <div class="row" style="margin: 0 auto;">
                <div class="col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                    {!! Form::label('start_date', Lang::get('validation.attributes.start_date')) !!}
                    {!! Form::date('start_date', \Carbon\Carbon::now(), ['class' => 'form-control']) !!}
                    </div>
                <!-- terugkomst -->
                <div class="col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                    {!! Form::label('end_date', Lang::get('validation.attributes.end_date')) !!}
                    {!! Form::date('end_date', \Carbon\Carbon::now(), ['class' => 'form-control']) !!}
                </div>
            </div>
                <div class="dummy"></div>
            </div>
            <!-- Step 2 -->
            <p><span>2</span> @lang('booking.vereniging')</p>
            <div class="step" id="step2">
                <div class="ol-sm-9 col-sm-offset-1 col-md-9 col-md-offset-1 col-lg-9 col-lg-offset-1">
                        {!! Form::label('vereniging', Lang::get('validation.attributes.vereniging')) !!}
                        {!! Form::text('vereniging', null, ['class' => 'form-control']) !!}
                </div>
                <div class="dummy"></div>
            </div>
            <!-- Step 3 -->
            <p><span>3</span> @lang('booking.fill_in_contact_details')</p>
            <div class="step" id="step3">
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                        {!! Form::label('firstname', Lang::get('validation.attributes.firstname')) !!}
                        {!! Form::text('firstname', null, ['class' => 'form-control']) !!}
                    </div>
                    <div class="col-sm-5 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                        {!! Form::label('lastname', Lang::get('validation.attributes.lastname')) !!}
                        {!! Form::text('lastname', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-7 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                        {!! Form::label('street', Lang::get('validation.attributes.street')) !!}
                        {!! Form::text('street', null, ['class' => 'form-control']) !!}
                    </div>
                    <div class="col-sm-4 col-md-3 col-lg-3">
                        {!! Form::label('number', Lang::get('validation.attributes.number')) !!}
                        {!! Form::number('number', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-7 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                        {!! Form::label('city', Lang::get('validation.attributes.city')) !!}
                        {!! Form::text('city', null, ['class' => 'form-control']) !!}
                    </div>
                    <div class="col-sm-4 col-md-3 col-lg-3">
                        {!! Form::label('postal', Lang::get('validation.attributes.postal')) !!}
                        {!! Form::text('postal', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="row">
                    <div class="ol-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                        {!! Form::label('phone', Lang::get('validation.attributes.phone')) !!}
                        {!! Form::text('phone', null, ['class' => 'form-control']) !!}
                    </div>
                    <div class="ol-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                        {!! Form::label('gsm', Lang::get('validation.attributes.gsm')) !!}
                        {!! Form::text('gsm', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="row">
                    <div class="ol-sm-9 col-sm-offset-1 col-md-9 col-md-offset-1 col-lg-9 col-lg-offset-1">
                        {!! Form::label('email', Lang::get('validation.attributes.email')) !!}
                        {!! Form::email('email', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
            </div>

            <p><span>4</span> @lang('booking.not_a_robot')</p>
            <div class="step">
                <div class="row">
                    <div class="col-md-6">
                        <div class="g-recaptcha col-md-6" data-sitekey="6LcLkRsTAAAAAGO9Wm-Eb47RixjKxXmtHnKzSgx6"></div>
                    </div>
                    <div class="col-md-6 text-right">
                        {!! Form::submit(Lang::get('booking.book'), ['class' => 'btn btn-primary btn-lg']) !!}<br/>
                    </div>
                    
                </div>
            </div>


        {!! Form::close() !!}

    </div>
</section>
<footer>
    <div class="container">
        <p>
            Copyright &copy; 2016 Chiro Sint-Job - All rights reserved
            <a href="../public/auth/login">Login</a>
        </p>
    </div>
</footer>