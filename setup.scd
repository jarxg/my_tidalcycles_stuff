// http://doc.sccode.org/Classes/ServerOptions.html

s.options.numBuffers = 1024 * 16; // + if + samples
s.options.memSize = 8192 * 16; // + if "alloc failed"
s.options.maxNodes = 1024 * 32; // + if drop outs and "too many nodes"

ServerOptions.devices;

s.options.outDevice = "Soundflower (2ch)";
s.options.outDevice = "Built-in Output";
s.options.outDevice = "Scarlett 2i2 USB";

//boot

s.boot;
SuperDirt.start;
s.quit;

// latency

s.latency = 0.3;

// record

s.recSampleFormat = "int16";
s.recHeaderFormat = "wav";
s.record;
s.stopRecording;
