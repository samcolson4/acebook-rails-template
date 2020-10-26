var myAudio = document.createElement('audio')
myAudio.setAttribute("src", "https://www.televisiontunes.com/uploads/audio/Jurassic%20Park.mp3")
myAudio.setAttribute("id", 'audio')
myAudio.setAttribute("currentTime", 18)


function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}


function play() {
    myAudio.volume = 0.2;
    myAudio.play();
}
function stopPlay() {
    myAudio.pause()
}
function animatosaurus() {
    const myDiv = document.createElement('div')
    myDiv.setAttribute('class', 'dinosaurus')
    myDiv.style.setProperty('--dinoheight', getRandomInt(window.innerHeight*2) + 'px')
    myDiv.style.setProperty('--dinospeed', getRandomInt(10) + "s")
    myDiv.innerHTML = ' <img style="height:50px; width:100px;" src="http://www.clipartbest.com/cliparts/ace/6rx/ace6rxkoi.gif"></img>      <img style="height:50px; width:100px; z-index: -1;" src="https://i.pinimg.com/originals/52/53/5d/52535ded43897c679ed4ff7a5673d14b.gif"></img>'
    return myDiv

}

function teamRexAssemble() {
    var reference = document.getElementById('footer_block')
    for(let i = 0; i <=15; i++){document.body.insertBefore(animatosaurus(), reference)}
}