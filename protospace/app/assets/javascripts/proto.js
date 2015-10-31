function hoge(proto_id) {
  var $heart = $("#like-button img");

  $("#like-button").on("click", function(){
    var $likeSum = $("#like-sum")
    like_function(proto_id, $(this), $heart, $likeSum)
  });
}

function like_function(id, button, heart, sum) {
  if (button.hasClass("decrement")){
      $.ajax({
        url: "/likes/" + id,
        type: "delete",
        data: {proto_id: id},
        dataType: "json",
      })
      .done(function(data){
        button.removeClass("decrement").addClass("increment")
        heart.attr("src", "/assets/icon_heart.svg")
        sum.text(data["count"])
        console.log('destroyよばれたよ')
        console.log(data)
      })
    }else{
      $.ajax({
        url: "/likes",
        type: "post",
        data: {proto_id: id},
        dataType: "json",
      })
      .done(function(data){
        button.removeClass("increment").addClass("decrement")
        heart.attr("src", "/assets/icom_heart_red.svg")
        sum.text(data["count"])
        console.log('createよばれたよ')
        console.log(data)
      })
      .fail(function(err) {
        console.log(err)
      })
    }
}
