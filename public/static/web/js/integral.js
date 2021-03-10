// 轮播图
var swiper = new Swiper('.swiper-container', {
    direction: 'vertical',
    loop: true,
    autoplay: {
        delay: 3000,
        stopOnLastSlide: false,
        disableOnInteraction: false,
    }
});