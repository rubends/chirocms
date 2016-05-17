<section id="main">
    <div class="container template-content programmaboekje">
    
        <h1>{{$page->title}}</h1>

        <div class="row">
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/wemel.pdf" target="_blank">
                <h2 class="carousel-caption">WEMEL</h2>
                <img src="../public/images/groep/vlagpaars.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/ribbel.pdf" target="_blank">
                <h2 class="carousel-caption">RIBBEL</h2>
                <img src="../public/images/groep/vlagpaars.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <!--<div class="col-md-4 text-center">
                <h2 class="carousel-caption">SPEELCLUB</h2>
                <img src="../public/images/groep/vlaggeel.png" alt="" class="img-responsive center-block">
            </div>-->
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/mazzel.pdf" target="_blank">
                <h2 class="carousel-caption">MAZZEL</h2>
                <img src="../public/images/groep/vlaggeel.png" alt="" class="img-responsive center-block">
                </a>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/lira.pdf" target="_blank">
                <h2 class="carousel-caption">LIRA</h2>
                <img src="../public/images/groep/vlaglichtgroen.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/dora.pdf" target="_blank">
                <h2 class="carousel-caption">DORA</h2>
                <img src="../public/images/groep/vlagdonkergroen.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/tito.pdf" target="_blank">
                <h2 class="carousel-caption">TITO</h2>
                <img src="../public/images/groep/vlagrood.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-2 text-center">
                <a href="../public/programmaboekje/keti.pdf" target="_blank">
                <h2 class="carousel-caption">KETI</h2>
                <img src="../public/images/groep/vlagblauw.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <div class="col-md-4 text-center">
                <a href="../public/programmaboekje/aspi.pdf" target="_blank">
                <h2 class="carousel-caption">ASPI</h2>
                <img src="../public/images/groep/vlagoranje.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        </div>
        

        {!! $page->content !!}
        
    </div>
</section>
<footer>
    <div class="container">
        <p>
            Copyright &copy; 2016 Chiro Sint-Job - All rights reserved
            <div class="cmslinks"><a href="../public/auth/login">Login</a></div>
        </p>
    </div>
</footer>