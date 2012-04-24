var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

// Generate a random number
var randomNumber = Math.floor(Math.random()*101)

// Make the statment for toohigh/toolow
$("#toolow").hide();
$("#toohigh").hide();
$("#youWin").hide();
$("#youLose").hide();

$("#btnGuess").click(function() {
	if($("#guess").val() == randomNumber){
		$("#youWin").show();
		alert("Play again if you dare");
	} else {
		if(guessesLeft == 0){
			$("youLose").show();
			alert("Play again if you dare");
		}
		guessesLeft = guessesLeft - 1;
		updateScore(guessesLeft);
		if($("#guess").val() < randomNumber){
			$("#toolow").show();
			$("#toolow").fadeOut(2000);
		} else if($("#guess").val() > randomNumber){
			$("#toohigh").show();
			$("#toohigh").fadeOut(2000);
		} 
	}
});

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').html(score);
}

