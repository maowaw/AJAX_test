$(document).ready(function() {





//TAB POUR LES CATEGORY

  //fait disparaître les div sous chaque li (sauf première)
  $(".category-div").hide();


  $(".category-item").click(function(){
    //pour surligner le tab actif (et pas les autres)
    $(".category-item").removeClass('active')
    $(this).addClass('active')

    //afficher le  contenu correspondant au tab
    $(".category-div").fadeOut(500);
    $(this).next().fadeIn(500);
  });

  //DROP-DOWN MENU
  //En cas de clic n'importe où sur le document, j'efface mon dropdown menu et mes modales
  $('.dropdown-content').hide()

  $('.avatar').click(function(){
    $('.dropdown-content').toggle(300);

  });


  });



