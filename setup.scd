// http://doc.sccode.org/Classes/ServerOptions.html

s.options.numBuffers = 1024 * 16; // increase this if you need to load more samples
s.options.memSize = 8192 * 16; // increase this if you get "alloc failed" messages
s.options.maxNodes = 1024 * 32; // increase this if you are getting drop outs and the message "too many nodes"

ServerOptions.devices;

s.options.outDevice = "Soundflower (2ch)";
s.options.outDevice = "Built-in Output";
s.options.outDevice = "Scarlett 2i2 USB";

//boot

s.boot;
SuperDirt.start;
s.quit;

s.latency = 0.3;

// record

s.recSampleFormat = "int16";
s.recHeaderFormat = "wav";
s.record;
s.stopRecording;
