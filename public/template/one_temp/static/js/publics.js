
jQuery(function(){
    //imgFull
    $(".imgFull").each(function(index, element) {
        $(".imgFull").eq(index).css("background-image", "url(" + $(".imgFull").eq(index).find("img").attr("src") + ")");
    });


    function menu(){
        if($(window).width()>992){$(".navBoxm").hide();$(".menuBtn").removeClass("active");}
    }
    menu();

    $(".navList .navSubLi h4").on("click",function(){
        if($(this).parent().hasClass("active")){
            $(this).parent().removeClass("active");
            $(this).next(".navThrList").slideUp();
            $(this).parent().find(".navFouList").slideUp();
        }else{
            $(this).parent().addClass("active");
            $(this).next(".navThrList").slideDown();

        }
    })
    $(".navList .navThrLi h5").on("click",function(){
        if($(this).parent().hasClass("active")){
            $(this).parent().removeClass("active");
            $(this).next(".navFouList").slideUp();
        }else{
            $(this).parent().addClass("active");
            $(this).next(".navFouList").slideDown();
        }
    })

    $(".navList .navLi").hover(function(){
        $(this).addClass("active");
        $(this).find(".navSub").stop().slideDown();
    },function(){
        $(this).removeClass("active");
        $(this).find(".navSub").stop().slideUp();
        $(".navThrList").slideUp();
        $(".navFouList").slideUp();
    })

    $(".navBoxm").append("<ul class='navListm'></ul>");
    $(".navListm").html($(".navList").html());

    $(".navSubLi").each(function(index, element) {
        if($(this).find(".navThrList").length>0){
            $(this).addClass("has");
            $(this).find("h4 a").attr("href","javascript:;");
        }
    });
    $(".navThrLi").each(function(index, element) {
        if($(this).find(".navFouList").length>0){
            $(this).addClass("has");
            $(this).find("h5 a").attr("href","javascript:;");
        }
    });
    $(".navListm .navLi").each(function(index, element) {
        if($(this).find(".navSub").length>0){
            $(this).addClass("has");
            $(this).find("h3 a").attr("href","javascript:;");
        }
    });

    $(".navListm .navLi h3").on("click",function(){
        if($(this).parent().hasClass("active")){
            $(this).parent().removeClass("active");
            $(this).next(".navSub").slideUp();
            $(this).parent().find(".navFouList").slideUp();
        }else{
            $(".navListm .navLi").removeClass("active");
            $(".navSub").slideUp();
            $(".navThrList").slideUp();
            $(".navFouList").slideUp();
            $(this).parent().addClass("active");
            $(this).next(".navSub").slideDown();

        }
    })
    $(".navListm .navSubLi h4").on("click",function(){
        if($(this).parent().hasClass("active")){
            $(this).parent().removeClass("active");
            $(this).next(".navThrList").slideUp();
            $(this).parent().find(".navFouList").slideUp();
        }else{
            $(".navListm .navSubLi").removeClass("active");
            $(".navThrList").slideUp();
            $(".navFouList").slideUp();
            $(this).parent().addClass("active");
            $(this).next(".navThrList").slideDown();

        }
    })
    $(".navListm .navThrLi h5").on("click",function(){
        if($(this).parent().hasClass("active")){
            $(this).parent().removeClass("active");
            $(this).next(".navFouList").slideUp();
        }else{
            $(".navListm .navThrLi").removeClass("active");
            $(".navFouList").slideUp();
            $(this).parent().addClass("active");
            $(this).next(".navFouList").slideDown();
        }
    })


    $(window).on("click",function(){
        $(".menuBtn").removeClass("active");
        $(".navBoxm").slideUp();
    })
    $(".menuBtn").on("click",function(event){
        $(this).toggleClass("active");
        $(".navBoxm").slideToggle();
        event.stopPropagation();
    })
    $(".navBoxm").on("click",function(event){
        event.stopPropagation();
    })




    $(".box1Bot li").each(function(index, element) {
        $(this).attr("data-wow-delay",index*3/10+"s");
    });



    //bannerN
    $(".bannerN").css("background-image", "url(" + $(".bannerN").find("img").attr("src") + ")");
    //onepage
    $(".oneText").hide();
    $(".oneText").eq(0).show();
    $(".oneBtn a").on("click",function(){
        if($(this).hasClass("active")){
            $(this).removeClass("active").find("strong").html("english");
            $(".oneText").hide();
            $(".oneText").eq(0).show();
        }else{
            $(this).addClass("active").find("strong").html("CHINA");
            $(".oneText").hide();
            $(".oneText").eq(1).show();
        }
    })
    //history


    $(".arLef").css("min-height",$(".arRig").height()+100);

    //product

    $(".mainSpace").css("height",$(".proNavBg").height());

    $(".pro2 li").each(function(index, element) {
        $(this).attr("data-wow-delay",index*3/10+"s");
    });
    $(".solu2 li").each(function(index, element) {
        $(this).attr("data-wow-delay",index*3/10+"s");
    });

    $(".proTab3 li").on("click touchstart",function(){
        var proNum = $(this).index();
        $(this).addClass("active").siblings().removeClass("active");
        pro3Bot.slideTo(proNum, 1000, false);
    })
    $(".proWinLinke").on("click",function(){
        $(".winBox").fadeIn();
        $(".winBg").fadeIn();
    })
    $(".winBox").on("click",function(event){
        event.stopPropagation();
    })
    $(".winClose").on("click",function(){
        $(".winBox").fadeOut();
        $(".winBg").fadeOut();
    })
    $(".winBg").on("click",function(){
        $(".winBox").fadeOut();
        $(".winBg").fadeOut();
    })
    $(".proOnline").off("click");

    function hderHig(x){
        var hig = $(".headerBg").height();
        x.css("padding-top",hig+"px");
    }
    hderHig($(".bannerN"));

    function myhegiht(divW,divN){
        var $columns = $(divW).find("li");
        var contact_inforH = 0;
        $columns.each(function(){
            if($(this).find(divN).height() > contact_inforH){
                contact_inforH = $(this).find(divN).height()
            }
        });
        $columns.height(contact_inforH);
    }
    myhegiht(".pro2",".proText2");
    function equip() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        if((sUserAgent.match(/(ipod|iphone os|midp|ucweb|android|windows ce|windows mobile)/i))) {
            $(".xgInput").focus(function(){$(".headerBg").css("position","absolute");})
            $(".xgInput").focus(function(){$(".headerBg").css("position","fixed");})
        }
    }
    equip();
    $(window).resize(function(){
        scro();
        menu();
        hderHig($(".bannerN"));
        $(".arLef").css("min-height",$(".arRig").height()+100);
        myhegiht(".pro2",".proText2");
        $(".mainSpace").css("height",$(".proNavBg").height());
        equip();
    })


    $(document).ready(function(){
        /* ----- 侧边悬浮 ---- */
        $(document).on("mouseenter", ".suspension .a", function(){
            var _this = $(this);
            var s = $(".suspension");
            var isServicePhone = _this.hasClass("a-service-phone");
            var isQrcode = _this.hasClass("a-qrcode");
            if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
            if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
        });
        $(document).on("mouseleave", ".suspension, .suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("mouseenter", ".suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("click", ".suspension .a-top", function(){
            $("html,body").animate({scrollTop: 0});
        });
        $(window).scroll(function(){
            var st = $(document).scrollTop();
            var $top = $(".suspension .a-top");
            if(st > 400){
                $top.css({display: 'block'});
            }else{
                if ($top.is(":visible")) {
                    $top.hide();
                }
            }
        });
    });

})
