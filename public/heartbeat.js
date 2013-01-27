function makeWav(fileName, volume)
{
	audioElement = document.createElement("audio");
	audioElement.src=fileName;
	if(volume) { audioElement.volume = volume; }
	return audioElement;
}

var hb = 'heartbeat.wav';

sounds = {
	"lastTimeout":false,
	"audioArray": [
		makeWav(hb),
		makeWav(hb, 0.5),
		false,
		false,
		makeWav(hb),
		makeWav(hb, 0.5),
		false,
		false,
		makeWav(hb),
		makeWav(hb, 0.5),
		false,
		false,
		makeWav(hb),
		makeWav(hb, 0.5),
		false,
		false,
	],
	"channels":16,
	"firstCall":true,
	"define_sound_array":function(soundFile) 
	{
		this.audioArray = [];
		for (i=0; i<this.channels; i++){
			var audioElement = document.createElement('audio');
			audioElement.src=soundFile;
			this.audioArray[i] = audioElement;
		}
	},
	"start_beat": function (interval)
	{
		this.soundIndex = 0;
		clearTimeout(sounds.currentTimeout);
		//Need immediate sample when changing tempo, but not on first call.
		if (!this.firstCall) { setTimeout(sounds.perform, 0); }
		else { this.firstCall = false; }
		this.currentTimeout = setInterval( sounds.perform, interval);
	},
	//perform actually PLAYS the audio.
	"perform":function() {
				if(sounds.audioArray[sounds.soundIndex]) {
					sounds.audioArray[sounds.soundIndex].play();
					//call eric's function.  I hope it's async. ^_^
					sounds.functionToCall();
					game.SetPulse();
				}
				//if we haven't reached the last element:
				if(sounds.soundIndex < (sounds.audioArray.length - 1))
				{	//move on to next
					sounds.soundIndex++;
				} else {
					//otherwise start over
					sounds.soundIndex = 0;  
				}
			},
	"functionToCall":function() { console.log("you called me.");}
}

/*
To install, just include the js file and "heartbeat.wav" in the top level folder of the working area.

To make this work, simply:
	sounds.start_beat(milliseconds);
For whichever function is called when a beat happens, 
you must change the "functionToCall" function to whatever you're going to use.
It will call that function on every heart beat.
*/
//for example:
//window.onload = function() { sounds.start_beat(500); }
