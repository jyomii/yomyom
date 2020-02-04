jQuery(document).ready(function($) {

    "use strict";

    //------- Notifications Dropdowns
    $('.top-area > .setting-area > li').on("click", function() {
        $(this).siblings().children('div').removeClass('active');
        $(this).children('div').addClass('active');
        return false;
    });
    //------- remove class active on body
    $("body *").not('.top-area > .setting-area > li').on("click", function() {
        $(".top-area > .setting-area > li > div").removeClass('active');
    });


    //--- user setting dropdown on topbar	
    $('.user-img').on('click', function() {
        $('.user-setting').toggleClass("active");
        return false;
    });

    //--- side message box	
    /*$('.friendz-list > li, .chat-users > li').on('click', function() {
    	$('.chat-box').addClass("show");
    	return false;
    });	
    	$('.close-mesage').on('click', function() {
    		$('.chat-box').removeClass("show");
    		return false;
    	});	*/

    //------ scrollbar plugin
    if ($.isFunction($.fn.perfectScrollbar)) {
        $('.dropdowns, .twiter-feed, .invition, .followers, .chatting-area, .peoples, #people-list, #people-list1, #people-list2, #people-list3, #people-list4, #people-list5, #people-list6, #people-list7, .chat-list > ul, .message-list, .chat-users, .left-menu').perfectScrollbar();
    }

    /*--- socials menu scritp ---*/
    $('.trigger').on("click", function() {
        $(this).parent(".menu").toggleClass("active");
    });

    /*--- emojies show on text area ---*/
    $('.add-smiles > span').on("click", function() {
        $(this).parent().siblings(".smiles-bunch").toggleClass("active");
    });

    // delete notifications
    $('.notification-box > ul li > i.del').on("click", function() {
        $(this).parent().slideUp();
        return false;
    });

    /*--- socials menu scritp ---*/
    $('.f-page > figure i').on("click", function() {
        $(".drop").toggleClass("active");
    });

    //===== Search Filter =====//
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter(searchDir, list) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter($("#searchDir"), $("#people-list"));
        });
    }(jQuery));



    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter1(searchDir1, list1) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir1);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list1).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list1).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list1).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter1($("#searchDir1"), $("#people-list1"));
        });
    }(jQuery));

    //===========================================================================
    
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter2(searchDir2, list2) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir2);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list2).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list2).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list2).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter2($("#searchDir2"), $("#people-list2"));
        });
    }(jQuery));

    //===========================================================================
    
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter3(searchDir3, list3) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir3);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list3).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list3).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list3).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter3($("#searchDir3"), $("#people-list3"));
        });
    }(jQuery));

    //===========================================================================
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter4(searchDir4, list4) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir4);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list4).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list4).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list4).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter4($("#searchDir4"), $("#people-list4"));
        });
    }(jQuery));

    //===========================================================================
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter5(searchDir5, list5) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir5);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list5).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list5).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list5).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter5($("#searchDir5"), $("#people-list5"));
        });
    }(jQuery));

    //===========================================================================
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter6(searchDir6, list6) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir6);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list6).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list6).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list6).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter6($("#searchDir6"), $("#people-list6"));
        });
    }(jQuery));

    //===========================================================================
  //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter7(searchDir7, list7) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir7);

            $(input)
                .change(function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list7).find("li:not(:Contains(" + filter + "))").slideUp();
                        $(list7).find("li:Contains(" + filter + ")").slideDown();
                    } else {
                        $(list7).find("li").slideDown();
                    }
                    return false;
                })
                .keyup(function() {
                    $(this).change();
                });
        }

        //search friends widget
        $(function() {
            listFilter7($("#searchDir7"), $("#people-list7"));
        });
    }(jQuery));

    //===========================================================================
    //progress line for page loader
    $('body').show();
    NProgress.start();
    setTimeout(function() {
        NProgress.done();
        $('.fade').removeClass('out');
    }, 2000);

    //--- bootstrap tooltip	
    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });

    // Sticky Sidebar & header
    if ($(window).width() < 769) {
        jQuery(".sidebar").children().removeClass("stick-widget");
    }

    if ($.isFunction($.fn.stick_in_parent)) {
        $('.stick-widget').stick_in_parent({
            parent: '#page-contents',
            offset_top: 60,
        });


        $('.stick').stick_in_parent({
            parent: 'body',
            offset_top: 0,
        });

    }

    /*--- topbar setting dropdown ---*/
    $(".we-page-setting").on("click", function() {
        $(".wesetting-dropdown").toggleClass("active");
    });

    /*--- topbar toogle setting dropdown ---*/
    $('#nightmode').on('change', function() {
        if ($(this).is(':checked')) {
            // Show popup window
            $(".theme-layout").addClass('black');
        } else {
            $(".theme-layout").removeClass("black");
        }
    });

    //chosen select plugin
    if ($.isFunction($.fn.chosen)) {
        $("select").chosen();
    }

    //----- add item plus minus button
    if ($.isFunction($.fn.userincr)) {
        $(".manual-adjust").userincr({
            buttonlabels: {
                'dec': '-',
                'inc': '+'
            },
        }).data({
            'min': 0,
            'max': 20,
            'step': 1
        });
    }

    if ($.isFunction($.fn.loadMoreResults)) {
        $('.loadMore').loadMoreResults({
            displayedItems: 3,
            showItems: 1,
            button: {
                'class': 'btn-load-more',
                'text': 'Load More'
            }
        });
    }
    //===== owl carousel  =====//
    if ($.isFunction($.fn.owlCarousel)) {
        $('.sponsor-logo').owlCarousel({
            items: 6,
            loop: true,
            margin: 30,
            autoplay: true,
            autoplayTimeout: 1500,
            smartSpeed: 1000,
            autoplayHoverPause: true,
            nav: false,
            dots: false,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 3,
                },
                600: {
                    items: 3,

                },
                1000: {
                    items: 6,
                }
            }

        });
    }

    // slick carousel for detail page
    if ($.isFunction($.fn.slick)) {
        $('.slider-for-gold').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            slide: 'li',
            fade: false,
            asNavFor: '.slider-nav-gold'
        });

        $('.slider-nav-gold').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: '.slider-for-gold',
            dots: false,
            arrows: true,
            slide: 'li',
            vertical: true,
            centerMode: true,
            centerPadding: '0',
            focusOnSelect: true,
            responsive: [{
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true,
                        vertical: false,
                        centerMode: true,
                        dots: false,
                        arrows: false
                    }
                },
                {
                    breakpoint: 641,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true,
                        vertical: true,
                        centerMode: true,
                        dots: false,
                        arrows: false
                    }
                },
                {
                    breakpoint: 420,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true,
                        vertical: false,
                        centerMode: true,
                        dots: false,
                        arrows: false
                    }
                }
            ]
        });
    }

    //---- responsive header

    $(function() {

        //	create the menus
        $('#menu').mmenu();
        $('#shoppingbag').mmenu({
            navbar: {
                title: 'General Setting'
            },
            offCanvas: {
                position: 'right'
            }
        });

        //	fire the plugin
        $('.mh-head.first').mhead({
            scroll: {
                hide: 200
            }

        });
        $('.mh-head.second').mhead({
            scroll: false
        });


    });

    //**** Slide Panel Toggle ***//
    $("span.main-menu").on("click", function() {
        $(".side-panel").addClass('active');
        $(".theme-layout").addClass('active');
        return false;
    });

    $('.theme-layout').on("click", function() {
        $(this).removeClass('active');
        $(".side-panel").removeClass('active');


    });


    // login & register form
    $('button.signup').on("click", function() {
        $('.login-reg-bg').addClass('show');
        return false;
    });

    $('.already-have').on("click", function() {
        $('.login-reg-bg').removeClass('show');
        return false;
    });

    //----- count down timer		
    if ($.isFunction($.fn.downCount)) {
        $('.countdown').downCount({
            date: '11/12/2018 12:00:00',
            offset: +10
        });
    }

    /** Post a Comment **/
    /*
    jQuery(".post-comt-box textarea").on("keydown", function(event) {
    	// 엔터 쳤을 때
        if (event.keyCode == 13) {
            var comment = jQuery(this).val();
            var parent = jQuery(".showmore").parent("li");
            // 댓글 달리는 것처럼 보이게
            var comment_HTML = '	<li><div class="comet-avatar"><img src="images/resources/comet-1.jpg" alt=""></div><div class="we-comment"><div class="coment-head"><h5><a href="time-line.html" title="">Jason borne</a></h5><span>1 year ago</span><a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a></div><p>' + comment + '</p></div></li>';
            $(comment_HTML).insertBefore(parent);
            jQuery(this).val('');
        }
    });
     */
    
    //inbox page 	
    //***** Message Star *****//  
    $('.message-list > li > span.star-this').on("click", function() {
        $(this).toggleClass('starred');
    });


    //***** Message Important *****//
    $('.message-list > li > span.make-important').on("click", function() {
        $(this).toggleClass('important-done');
    });



    // Listen for click on toggle checkbox
    $('#select_all').on("click", function(event) {
        if (this.checked) {
            // Iterate each checkbox
            $('input:checkbox.select-message').each(function() {
                this.checked = true;
            });
        } else {
            $('input:checkbox.select-message').each(function() {
                this.checked = false;
            });
        }
    });


    $(".delete-email").on("click", function() {
        $(".message-list .select-message").each(function() {
            if (this.checked) {
                $(this).parent().slideUp();
            }
        });
    });

    // change background color on hover
    $('.category-box').hover(function() {
        $(this).addClass('selected');
        $(this).parent().siblings().children('.category-box').removeClass('selected');
    });


    //------- offcanvas menu 

    const menu = document.querySelector('#toggle');
    const menuItems = document.querySelector('#overlay');
    const menuContainer = document.querySelector('.menu-container');
    const menuIcon = document.querySelector('.canvas-menu i');

    function toggleMenu(e) {
        menuItems.classList.toggle('open');
        menuContainer.classList.toggle('full-menu');
        menuIcon.classList.toggle('fa-bars');
        menuIcon.classList.add('fa-times');
        e.preventDefault();
    }

    if (menu) {
        menu.addEventListener('click', toggleMenu, false);
    }

    // Responsive nav dropdowns
    $('.offcanvas-menu li.menu-item-has-children > a').on('click', function() {
        $(this).parent().siblings().children('ul').slideUp();
        $(this).parent().siblings().removeClass('active');
        $(this).parent().children('ul').slideToggle();
        $(this).parent().toggleClass('active');
        return false;
    });



}); //document ready end