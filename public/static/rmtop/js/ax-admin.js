
// 以下为开始载入执行
$(document).ready(function () {

//菜单收缩到图标
    if(clientIs == 'phone'||clientIs == 'pad'){
        $(".top-admin nav").addClass("top-nav-fold");
    }
    //
    $(".top-admin nav .top-close-nav,.top-admin nav .top-mask").click(function(){

        //
        if(clientIs == 'phone'||clientIs == 'pad'){
            $(".top-admin aside").removeClass("top-aside-unfold");
            $.cookie('closeAside', 'fold', { expires: 3650, path: '/' });
        }
        //


        setTimeout(function(){  $(".top-scroll").getAxScroll().resize();}, 500);

        if($(".top-admin nav").hasClass("top-nav-fold")){

            $(".top-admin nav").removeClass("top-nav-fold");
            $(".top-admin nav .top-menu .top-show").css("height","auto");
            $.cookie('closeNav', '', { expires: 3650, path: '/' });
        }else{
            $(".top-admin nav").addClass("top-nav-fold");
            $(".top-admin nav .top-menu .top-show").css("height","0");
            $.cookie('closeNav', 'fold', { expires: 3650, path: '/' });
        }
    });


    $(".top-menu a").click(function(){

        if($(".top-nav").hasClass("top-nav-fold")){
            $(".top-nav").removeClass("top-nav-fold");
            $.cookie('closeNav', '', { expires: 3650, path: '/' });
        }
    });

    if($.cookie("closeNav") === 'fold') {
        $(".top-admin nav").addClass("top-nav-fold");
        $(".top-admin nav .top-menu .top-show").css("height","0");
    } else {
        if(clientIs == 'phone'||clientIs == 'pad'){
            $(".top-admin nav").addClass("top-nav-fold");
        }else{
            $(".top-admin nav").removeClass("top-nav-fold");
        }
        $(".top-admin nav .top-menu .top-show").css("height","auto");
    }

    $(".top-admin nav .top-close-nav-all").click(function(){
        setTimeout(function(){  $(".top-scroll").getAxScroll().resize();}, 500);
        if($(".top-admin nav").hasClass("top-nav-fold-all")){
            $(".top-admin nav").removeClass("top-nav-fold-all");
            $.cookie('closeNav-all', '', { expires: 3650, path: '/' });
        }else{
            $(".top-admin nav").addClass("top-nav-fold-all");
            $.cookie('closeNav-all', 'fold', { expires: 3650, path: '/' });
        }
    });
    if($.cookie("closeNav-all") === 'fold') {
        $(".top-admin nav").addClass("top-nav-fold-all");
    } else {
        $(".top-admin nav").removeClass("top-nav-fold-all");
    }
    $(".top-menu").click(function () {
        setTimeout(function(){  $(".top-scroll").getAxScroll().resize();}, 500);
    });

//aside open/close
    $(".top-admin header .top-open-aside,.top-admin aside .top-close-aside").click(function () {
        setTimeout(function(){  $(".top-scroll").getAxScroll().resize();}, 500);
        if($(".top-admin aside").hasClass("top-aside-unfold")){
            $(".top-admin header .top-open-aside").removeClass("top-open-aside-rotate");
            $(".top-admin aside").removeClass("top-aside-unfold");
            $.cookie('closeAside', 'fold', { expires: 3650, path: '/' });
        }else{
            $(".top-admin header .top-open-aside").addClass("top-open-aside-rotate");
            $(".top-admin aside").addClass("top-aside-unfold");
            if(clientIs == 'phone'||clientIs == 'pad'){
                $.cookie('closeAside', 'fold', { expires: 3650, path: '/' });
            }else{
                $.cookie('closeAside', 'unfold', { expires: 3650, path: '/' });
            }

        }
    });
    if($.cookie("closeAside") === 'fold') {
        $(".top-admin header .top-open-aside").removeClass("top-open-aside-rotate");
        $(".top-admin aside").removeClass("top-aside-unfold");
    } else if($.cookie("closeAside") === 'unfold'){
        $(".top-admin header .top-open-aside").addClass("top-open-aside-rotate");
        $(".top-admin aside").addClass("top-aside-unfold");
    }else{
        $(".top-admin header .top-open-aside").removeClass("top-open-aside-rotate");
        $(".top-admin aside").removeClass("top-aside-unfold");
    }






//
});
//以下为滚动执行
$(window).scroll(function () {



});
//以下为完全载入执行
$(window).load(function () {


});
