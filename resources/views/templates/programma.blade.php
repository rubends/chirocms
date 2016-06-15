<section id="main">
    <div class="container template-content programmaboekje">
    
        <h1>{{$page->title}}</h1>

        <div class="row">
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/wemel.pdf" target="_blank">
                <h2 class="carousel-caption">WEMEL</h2>
                <img src="../images/groep/vlagpaars.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/ribbel.pdf" target="_blank">
                <h2 class="carousel-caption">RIBBEL</h2>
                <img src="../images/groep/vlagpaars.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        </div>
            <!--<div class="col-md-6 text-center">
                <h2 class="carousel-caption">SPEELCLUB</h2>
                <img src="../images/groep/vlaggeel.png" alt="" class="img-responsive center-block">
            </div>-->
        <div class="row">
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/speelclub.pdf" target="_blank">
                <h2 class="carousel-caption">SPEELCLUB</h2>
                <img src="../images/groep/vlaggeel.png" alt="" class="img-responsive center-block">
                </a>
            </div>

            <div class="col-md-6 text-center">
                <a href="../programmaboekje/lira.pdf" target="_blank">
                <h2 class="carousel-caption">LIRA</h2>
                <img src="../images/groep/vlaglichtgroen.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/dora.pdf" target="_blank">
                <h2 class="carousel-caption">DORA</h2>
                <img src="../images/groep/vlagdonkergroen.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/tito.pdf" target="_blank">
                <h2 class="carousel-caption">TITO</h2>
                <img src="../images/groep/vlagrood.png" alt="" class="img-responsive center-block">
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/keti.pdf" target="_blank">
                <h2 class="carousel-caption">KETI</h2>
                <img src="../images/groep/vlagblauw.png" alt="" class="img-responsive center-block">
                </a>
            </div>
            <div class="col-md-6 text-center">
                <a href="../programmaboekje/aspi.pdf" target="_blank">
                <h2 class="carousel-caption">ASPI</h2>
                <img src="../images/groep/vlagoranje.png" alt="" class="img-responsive center-block">
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
            <div class="cmslinks"><a href="../auth/login">Login</a></div>
        </p>
    </div>
</footer>