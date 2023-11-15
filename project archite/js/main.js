var swiper = new Swiper(".mySwiper", {
    speed: 600,
    parallax: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});
$('.img1').mouseenter(function () {
    $('.designs').css('background-image',"url('img/01 (2).jpg')")
    $('.img1 .overlay').css('background-color','#0000005c')
    $('.img1 .black_bg').animate({height:'200px'}, 500)
})
$('.img2').mouseenter(function () {
    $('.designs').css('background-image',"url('img/02 (2).jpg')")
    $('.img2 .overlay').css('background-color','#0000005c')
    $('.img2 .black_bg').animate({height:'200px'}, 500)
})
$('.img3').mouseenter(function () {
    $('.designs').css('background-image',"url('img/03 (2).jpg')")
    $('.img3 .overlay').css('background-color','#0000005c')
    $('.img3 .black_bg').animate({height:'200px'}, 500)
})
$('.img4').mouseenter(function () {
    $('.designs').css('background-image',"url('img/04.jpg')")
    $('.img4 .overlay').css('background-color','#0000005c')
    $('.img4 .black_bg').animate({height:'200px'}, 500)
})

$('.img1').mouseleave(function () {
    $('.img1 .overlay').css('background-color','transparent')
    $('.img1 .black_bg').animate({height:'0px'}, 500)
})
$('.img2').mouseleave(function () {
    $('.img2 .overlay').css('background-color','transparent')
    $('.img2 .black_bg').animate({height:'0px'}, 500)
})
$('.img3').mouseleave(function () {
    $('.img3 .overlay').css('background-color','transparent')
    $('.img3 .black_bg').animate({height:'0px'}, 500)
})
$('.img4').mouseleave(function () {
    $('.img4 .overlay').css('background-color','transparent')
    $('.img4 .black_bg').animate({height:'0px'}, 500)
})