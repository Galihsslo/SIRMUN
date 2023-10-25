 {{-- <div class="video-area overlay-video bg-common-style"
     style="background-image: url('{{ asset('Assets/Frontend/img/banner/1.png') }}');">
     @if ($video != null)
         <div class="container">
             <div class="video-content">
                 <h2 class="video-title">{{ $video->title }}</h2>
                 <p class="video-sub-title"> {{ $video->desc }} </p>
                 <a class="play-btn popup-youtube wow bounceInUp" data-wow-duration="2s" data-wow-delay=".1s"
                     href="{{ $video->url }}"><i class="fa fa-play" aria-hidden="false"></i></a>
             </div>
         </div>
     @endif
 </div> --}}

 <div class="container-xxl bg-light py-5 my-5">
     <div class="container py-5">
         <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
             <h1 class="display-6">
                 <h2 class="video-title">{{ $video->title }}</h2>
             </h1>
         </div>
         <div class="row g-3">
             <div class="col-16 col-md-3 wow fadeIn" data-wow-delay="0.3s">
                 <div class="bg-white text-center p-3">
                     <iframe width="250" height="315" src="https://www.youtube.com/embed/jOpfIMy0SKE"
                         title="YouTube video player" frameborder="0"
                         allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                         allowfullscreen></iframe>
                 </div>
             </div>
             <div class="col-16 col-md-3 wow fadeIn" data-wow-delay="0.3s">
                 <div class="bg-white text-center p-3">
                     <iframe width="250" height="315" src="https://www.youtube.com/embed/4RaEDC5B4so"
                         title="YouTube video player" frameborder="0"
                         allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                         allowfullscreen></iframe>
                 </div>
             </div>
             <div class="col-16 col-md-3 wow fadeIn" data-wow-delay="0.3s">
                 <div class="bg-white text-center p-3">
                     <iframe width="250" height="315" src="https://www.youtube.com/embed/pc5lH_sWmsA"
                         title="YouTube video player" frameborder="0"
                         allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                         allowfullscreen></iframe>
                 </div>
             </div>
             <div class="col-16 col-md-3 wow fadeIn" data-wow-delay="0.3s">
                 <div class="bg-white text-center p-3">
                     <iframe width="250" height="315" src="https://www.youtube.com/embed/YgudjTmTYSo"
                         title="YouTube video player" frameborder="0"
                         allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                         allowfullscreen></iframe>
                 </div>
             </div>

             <!-- <div class="col-12 text-center py-4">
                <a class="btn btn-primary py-3 px-4" href="">Buy Token</a>
            </div>
            <div class="col-12 text-center">
                <img class="img-fluid m-1" src="img/payment-1.png" alt="" style="width: 50px;">
                <img class="img-fluid m-1" src="img/payment-2.png" alt="" style="width: 50px;">
                <img class="img-fluid m-1" src="img/payment-3.png" alt="" style="width: 50px;">
                <img class="img-fluid m-1" src="img/payment-4.png" alt="" style="width: 50px;">
            </div> -->
         </div>
     </div>
 </div>
